import react from '@vitejs/plugin-react';
import { defineConfig } from 'vite';

// https://vitejs.dev/config/
export default defineConfig({
    base: '/',
    build: {
        outDir: 'dist', // Ensure the output directory is set to dist
        manifest: true,
        rollupOptions: {
            input: {
                main: './bundles/index.tsx', // Main entry point for the app
            },
        },
    },
    plugins: [react()],
    server: {
        port: 21012, // Development server port
        proxy: {
            '/api': {
                target: 'http://localhost:3000',
                changeOrigin: true,
            },
            '/graphql': {
                target: 'http://localhost:3000',
                changeOrigin: true,
            },
        },
    },
});
