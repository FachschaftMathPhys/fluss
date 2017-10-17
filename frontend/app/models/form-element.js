import DS from 'ember-data';

export default DS.Model.extend({
  typ: DS.attr('string'),
  label: DS.attr('string'),
  dataField: DS.attr('object'),
  forms: DS.hasMany('form')
});
