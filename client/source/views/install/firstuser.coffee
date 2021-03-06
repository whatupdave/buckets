_ = require 'underscore'

View = require 'lib/view'
FormMixin = require 'views/base/mixins/form'

tpl = require 'templates/install/firstuser'

module.exports = class FirstUserView extends View

  template: tpl
  container: '#bkts-content'
  autoRender: yes

  events:
    'submit form': 'submitForm'

  submitForm: (e) ->
    e.preventDefault()
    @submit @model.save @formParams()

  @mixin FormMixin
