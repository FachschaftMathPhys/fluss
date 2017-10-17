import { moduleForModel, test } from 'ember-qunit';

moduleForModel('body', 'Unit | Model | body', {
  // Specify the other units that are required for this test.
  needs: ['model:disbursal-request', 'model:inpayment-declaration', 'model:theoretikum-billing']
});

test('it exists', function(assert) {
  let model = this.subject();
  // let store = this.store();
  assert.ok(!!model);
});
