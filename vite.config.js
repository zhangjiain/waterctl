import { defineConfig } from "vite";
import { viteSingleFile } from "vite-plugin-singlefile";
import { createHtmlPlugin } from "vite-plugin-html";

export default defineConfig({
  define: {
    VERSION: JSON.stringify(process.env.npm_package_version),
  },
  build: {
    sourcemap: true,
    rollupOptions: {
      output: {
        entryFileNames: `[name].js`,
        chunkFileNames: `[name].js`,
        assetFileNames: `[name].[ext]`,
      },
    },
  },
  plugins: [viteSingleFile(), createHtmlPlugin({ minify: true })],
});
