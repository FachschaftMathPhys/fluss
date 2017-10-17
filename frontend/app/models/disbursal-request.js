import DS from 'ember-data';

export default DS.Model.extend({
  description: DS.attr('string'),
  figure: DS.attr('number'),
  submissionDate: DS.attr('date'),
  resolutionDate: DS.attr('date'),
  reviewDate: DS.attr('date'),
  mailingDate: DS.attr('date'),
  approvalDate: DS.attr('date'),
  invoiceSettled: DS.attr('boolean'),
  authorized: DS.attr('boolean'),
  eventDate: DS.attr('date'),
  food: DS.attr('boolean'),
  attendeeCount: DS.attr('number'),
  protocolLink: DS.attr('string'),
  protocolPage: DS.attr('number'),
  pdf: DS.attr('attr'),
  deposit: DS.attr('number'),
  discountCard: DS.attr('boolean'),
  drinkPositions: DS.hasMany('drink-position'),
  budgetaryPosition: DS.belongsTo('budgetary-position'),
  body: DS.belongsTo('body'),
  user: DS.belongsTo('user'),
  offerComparison: DS.belongsTo('offer-comparison'),
  account: DS.belongsTo('account')
});
