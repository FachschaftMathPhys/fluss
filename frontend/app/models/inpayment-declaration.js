import DS from 'ember-data';

export default DS.Model.extend({
  figure: DS.attr('number'),
  incomeDate: DS.attr('date'),
  pdf: DS.attr('attr'),
  eventDate: DS.attr('date'),
  depositDate: DS.attr('date'),
  depositReceipt: DS.attr('boolean'),
  mailingDate: DS.attr('date'),
  incomeTestatment: DS.attr('boolean'),
  reviewDate: DS.attr('date'),
  submissionDate: DS.attr('date'),
  approvalDate: DS.attr('date'),
  authorized: DS.attr('boolean')
  body: DS.belongsTo('body')
  budgetaryPosition: DS.belongsTo('budgetary-position')
});
