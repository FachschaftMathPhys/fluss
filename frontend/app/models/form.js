import DS from 'ember-data';

export default DS.Model.extend({
  title: DS.attr('string'),
  selections: DS.hasMany('selection'),
  formElements: DS.hasMany('form-element')
});
