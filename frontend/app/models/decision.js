import DS from 'ember-data';
const {attr,hasMany} = DS
export default DS.Model.extend({
  explanation: attr('string'),
  question: attr('string'),
  ownoptions: hasMany('option'),
  options: hasMany('option'),
  initmodels: hasMany('initmodel'),
  selections: hasMany('selection')
});
