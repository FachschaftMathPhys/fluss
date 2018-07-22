import DS from 'ember-data';
const {attr,hasMany,belongsTo} = DS
export default DS.Model.extend({
  explanation: attr('string'),
  title: attr('string'),
  forms: hasMany('form'),
  options: hasMany('option'),
  initmodels: hasMany('initmodel'),
  first: belongsTo('start')
});
