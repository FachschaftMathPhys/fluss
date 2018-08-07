import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  figure: attr('number'),
  incomeDate: attr('date'),
  pdf: attr('attr'),
  eventDate: attr('date'),
  depositDate: attr('date'),
  depositReceipt: attr('boolean'),
  mailingDate: attr('date'),
  incomeTestatment: attr('boolean'),
  reviewDate: attr('date'),
  submissionDate: attr('date'),
  approvalDate: attr('date'),
  authorized: attr('boolean'),
  body: hasOne('body'),
  budgetaryPosition: hasOne('budgetary-position'),
  user: hasOne('user'),
  idstep: hasOne('dialogstep',{polymorphic:true})
});
