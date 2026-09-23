// Run: npm install @resvg/resvg-js && node render.mjs
// resvg is used because headless Chrome and qlmanage both need their own
// sandbox, which fails when the shell is already sandboxed.

import { readFileSync, writeFileSync } from 'node:fs';
import { Resvg } from '@resvg/resvg-js';

const FIGURES = new URL('../../notes/figures/', import.meta.url).pathname;
const SCALE = 2;

const jobs = [
  { svg: 'basis-combination.svg', png: 'basis-combination-diagram.png', width: 720 },
  { svg: 'two-exits.svg', png: 'two-exits.png', width: 1100 },
];

for (const { svg, png, width } of jobs) {
  const resvg = new Resvg(readFileSync(FIGURES + svg), {
    fitTo: { mode: 'width', value: width * SCALE },
    font: { loadSystemFonts: true, defaultFontFamily: 'Helvetica Neue' },
    background: 'white',
  });
  const out = resvg.render().asPng();
  writeFileSync(FIGURES + png, out);
  console.log(`${svg} -> ${png}  ${resvg.width}x${resvg.height}  ${(out.length / 1024).toFixed(0)}KB`);
}
