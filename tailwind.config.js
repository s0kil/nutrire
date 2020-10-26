module.exports = {
    // Remove Unused CSS
    future: {
        purgeLayersByDefault: true,
    },
    purge: [
        'app/views/**/*.haml'
    ],
    theme: {
        extend: {}
    },
    variants: {},
    plugins: []
}
