import DS from 'ember-data';

export default DS.Model.extend({
  explanation: DS.attr('string'),
  question: DS.attr('string'),
  options: DS.hasMany('option')
});
