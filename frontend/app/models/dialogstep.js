import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(), 
  start: hasOne('start',{inverse: 'first'}),
  options: hasMany('option',{inverse:'optionfollowup'}),
  initmodels: hasMany('initmodel',{inverse: 'initfollowup'}),
  selections: hasMany('selection',{inverse: 'selfollowup'}),
  inpaymentDeclarations: hasMany('inpayment-declaration',{inverse:'idstep'}),
  offerComparisons: hasMany('offer-comparison',{inverse:'ocstep'}),
  theoretikumBillings: hasMany('theoretikum-billing',{inverse:'tbstep'}),
  financingApplications: hasMany('financing-application',{inverse:'fastep'}),
  disbursalRequests: hasMany('disbursal-request',{inverse:'drstep'}),
  fsResolutions: hasMany('fs-resolution',{inverse:'fsstep'}),
});
