import DS from 'ember-data';

export default DS.Model.extend({
  explanation: DS.attr('string'),
  title: DS.attr('string'),
  forms: DS.hasMany('form')
});
