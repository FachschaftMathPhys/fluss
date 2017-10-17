import { moduleForModel, test } from 'ember-qunit';

moduleForModel('fs-resolution', 'Unit | Model | fs resolution', {
  // Specify the other units that are required for this test.
  needs: ['model:offer-comparison', 'model:budgetary-position']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
