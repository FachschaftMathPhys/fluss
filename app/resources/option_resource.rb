class OptionResource < JSONAPI::Resource
  attributes :label # Beschriftung des Auswahlbuttons
#  has_one :forwarding # Das soll ähnlich einer einfach verkettetenden Liste funktionieren, wenn fertig, aber ich weiß noch nicht, wie ich hier die Referenz auf ein beliebiges Objekt in der Datenbank setzen kann
  relationship :decisions, to: :many # kann in mehreren Auswahldialogen verwendet werden
end
