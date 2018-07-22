import DS from 'ember-data';

export default DS.Model.extend({
  sessionDate: DS.attr('date'),
  figure: DS.attr('number'),
  applicant: DS.attr('string'),
  description: DS.attr('string'),
  justification: DS.attr('string'),
  miscellenea: DS.attr('string'),
  fastep: DS.belongsTo('dialogstep',{polymorphic:true}),
  offerComparison:DS.hasMany('offer-comparison')
});
