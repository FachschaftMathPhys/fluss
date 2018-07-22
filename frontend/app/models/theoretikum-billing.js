import DS from 'ember-data';

export default DS.Model.extend({
  submissionDate: DS.attr('date'),
  pdf: DS.attr('attr'),
  resolutionDate: DS.attr('date'),
  reviewDate: DS.attr('date'),
  approvalDate: DS.attr('date'),
  mailingDate: DS.attr('date'),
  printCosts: DS.attr('boolean'),
  lockerRent: DS.attr('boolean'),
  miscellenea: DS.attr('string'),
  postage: DS.attr('boolean'),
  figure: DS.attr('number'),
  eventDate: DS.attr('date'),
  protocolLink: DS.attr('string'),
  protocolPage: DS.attr('number'),
  offerComparison: DS.hasMany('offer-comparison'),
  budgetaryPosition: DS.belongsTo('budgetary-position'),
  body: DS.belongsTo('body')
});
