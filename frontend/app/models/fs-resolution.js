import DS from 'ember-data';

export default DS.Model.extend({
  figure: DS.attr('number'),
  description: DS.attr('string'),
  justification: DS.attr('string'),
  offerComparison: DS.hasMany('offer-comparison'),
  budgetaryPosition: DS.belongsTo('budgetary-position'),
  user: DS.belongsTo('user'),
  fsstep: DS.belongsTo('dialogstep',{polymorphic:true})
});
