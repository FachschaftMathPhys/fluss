import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  budgetaryPositions: DS.hasMany('budgetary-position')
});
