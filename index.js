const path = require('path')
const markdownResume = require('markdown-resume-pdf')

markdownResume('README.md', {
  html: true,
  pdf: true,
  output: path.resolve(__dirname, 'CV-Kristaps-Grinbergs')
})
