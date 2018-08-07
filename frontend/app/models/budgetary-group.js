import { Model, attr, key, hasOne, hasMany } from 'ember-orbit';

export default Model.extend({
	remoteId: key(),
  name: attr('string'),
  budgetaryPositions: hasMany('budgetary-position')
});
