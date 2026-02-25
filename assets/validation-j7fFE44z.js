function h(t){if(!t)return null;const n=t.length;if(n<8||n>32)return"密码长度为 8-32 位";const s=/[a-z]/.test(t),o=/[A-Z]/.test(t),r=/\d/.test(t),e=/[^\w\s]/.test(t);return[s,o,r,e].filter(Boolean).length<2?"密码需包含至少两种：小写字母、大写字母、数字、符号":null}export{h as v};
//# sourceMappingURL=validation-j7fFE44z.js.map
