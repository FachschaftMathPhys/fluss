import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  submissionDate: attr('date'),
  pdf: attr('attr'),
  resolutionDate: attr('date'),
  reviewDate: attr('date'),
  approvalDate: attr('date'),
  mailingDate: attr('date'),
  printCosts: attr('boolean'),
  lockerRent: attr('boolean'),
  miscellenea: attr('string'),
  postage: attr('boolean'),
  figure: attr('number'),
  eventDate: attr('date'),
  protocolLink: attr('string'),
  protocolPage: attr('number'),
  offerComparison: hasMany('offer-comparison'),
  budgetaryPosition: hasOne('budgetary-position'),
  body: hasOne('body'),
  user: hasOne('user'),
  tbstep: hasOne('dialogstep',{polymorphic:true})
});
