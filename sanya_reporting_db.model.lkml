connection: "reporting_db"

include: "/so_4643_final.view.lkml"
include: "/adg_poi_wise_visits.view.lkml"

explore: so_4643_final {}

explore: adg_poi_wise_visits{}
