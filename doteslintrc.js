module.exports = {
    env: {
        browser: true,
        node: true,
        es6: true
    },
    parserOptions: {
        ecmaVersion: 7,
        sourceType: 'module',
        ecmaFeatures: {
            impliedStrict: true,
            experimentalObjectRestSpread: true,
            jsx: true,
            modules: true
        }
    },
//    parser: 'babel-eslint',
    rules: {
        'block-scoped-var': 2,
        'brace-style': 1,
        camelcase: [2, { properties: 'never' }],
        'comma-dangle': [2, 'never'],
        'comma-style': 2,
        // TODO: Bring this down to 15
        complexity: [1, { max: 30 }],
        'consistent-this': [2, 'self'],
        curly: [2, 'all'],
        'dot-notation': [2, { allowKeywords: true }],
        eqeqeq: 2,
        'guard-for-in': 2,
        'key-spacing': [2, { beforeColon: false, afterColon: true }],
        'keyword-spacing': 2,
        'max-len': [
            2,
            1000,
            4,
            { ignoreComments: true, ignoreUrls: true, ignoreStrings: true, ignoreTemplateLiterals: true }
        ],
        // TODO: Bring this down to 6
        'max-params': [1, { max: 10 }],
        'new-cap': [2, { newIsCap: true, capIsNew: false }],
//        'no-bitwise': 2,
        'no-caller': 2,
        'no-cond-assign': 2,
//        'no-console': 2,
        'no-debugger': 2,
        'no-dupe-keys': 2,
        'no-else-return': 1,
        'no-empty': 2,
        'no-eval': 2,
        'no-iterator': 2,
//        'no-loop-func': 2,
        'no-mixed-spaces-and-tabs': 2,
        'no-multi-str': 2,
//        'no-new': 2,
        'no-proto': 2,
        'no-script-url': 2,
        'no-shadow': 0,
        'no-trailing-spaces': 1,
        'no-undef': 2,
        'no-unused-vars': [2, { vars: 'all', args: 'after-used' }],
        'no-use-before-define': [2, 'nofunc'],
        'no-var': 2,
//        'padded-blocks': [2, 'never'],
        'prefer-const': 2,
        semi: [2, 'always'],
        'space-before-blocks': 2,
        'spaced-comment': [2, 'always', { markers: ['global'] }],
        'valid-jsdoc': [2, { requireReturn: false }],
        'wrap-iife': [2, 'inside'],
        yoda: 2
//        'react/jsx-uses-react': 2,
//        'react/jsx-uses-vars': 2,
//        'react/jsx-key': 2,
//        'react/no-danger': 2,
//        'react/no-deprecated': 2,
//        'react/no-direct-mutation-state': 2,
//        'prettier/prettier': [
//            'error',
//            {
//                singleQuote: true,
 //               printWidth: 120,
  //              tabWidth: 4
//            }
 //       ],
//        'flowtype/define-flow-type': 1
    },
    plugins: [
//      'react',
//      'babel',
//      'flowtype',
//      'prettier'
    ]
};
