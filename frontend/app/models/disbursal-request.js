import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  description: attr('string'),
  figure: attr('number'),
  submissionDate: attr('date'),
  resolutionDate: attr('date'),
  reviewDate: attr('date'),
  mailingDate: attr('date'),
  approvalDate: attr('date'),
  invoiceSettled: attr('boolean'),
  authorized: attr('boolean'),
  eventDate: attr('date'),
  food: attr('boolean'),
  attendeeCount: attr('number'),
  protocolLink: attr('string'),
  protocolPage: attr('number'),
  pdf: attr('attr'),
  deposit: attr('number'),
  discountCard: attr('boolean'),
  drinkPositions: hasMany('drink-position'),
  budgetaryPosition: hasOne('budgetary-position'),
  body: hasOne('body'),
  user: hasOne('user'),
  offerComparison: hasMany('offer-comparison'),
  account: hasOne('account'),
  drstep: hasOne('dialogstep',{polymorphic:true})
});
