#include "BlackScholes.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

void BlackScholes::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it308.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void BlackScholes::thread_ap_idle() {
    if ((!esl_seteq<1,1,1>(ap_const_logic_1, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it66.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it67.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it68.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it69.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it70.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it71.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it72.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it73.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it74.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it75.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it76.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it77.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it78.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it79.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it80.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it81.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it82.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it83.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it84.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it85.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it86.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it87.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it88.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it89.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it90.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it91.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it92.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it93.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it94.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it95.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it96.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it97.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it98.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it99.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it100.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it101.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it102.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it103.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it104.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it105.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it106.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it107.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it108.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it109.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it110.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it111.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it112.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it113.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it114.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it115.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it116.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it117.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it118.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it119.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it120.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it121.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it122.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it123.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it124.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it125.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it126.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it127.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it128.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it129.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it130.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it132.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it133.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it134.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it135.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it136.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it137.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it138.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it139.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it140.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it141.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it142.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it143.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it144.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it145.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it146.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it147.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it148.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it149.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it150.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it151.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it152.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it153.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it154.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it155.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it156.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it157.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it158.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it159.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it160.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it161.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it162.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it163.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it164.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it165.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it166.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it167.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it168.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it169.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it170.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it171.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it172.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it173.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it174.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it175.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it176.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it177.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it178.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it179.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it180.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it181.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it182.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it183.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it184.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it185.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it186.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it187.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it188.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it189.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it190.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it191.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it192.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it193.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it194.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it195.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it196.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it197.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it198.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it199.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it200.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it201.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it202.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it203.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it204.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it205.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it206.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it207.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it208.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it209.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it210.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it211.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it212.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it213.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it214.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it215.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it216.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it217.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it218.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it219.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it220.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it221.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it222.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it223.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it224.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it225.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it226.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it227.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it228.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it229.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it230.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it231.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it232.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it233.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it234.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it235.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it236.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it237.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it238.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it239.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it240.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it241.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it242.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it243.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it244.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it245.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it246.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it247.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it248.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it249.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it250.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it251.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it252.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it253.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it254.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it255.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it256.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it257.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it258.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it259.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it260.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it261.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it262.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it263.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it264.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it265.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it266.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it267.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it268.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it269.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it270.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it271.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it272.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it273.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it274.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it275.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it276.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it277.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it278.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it279.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it280.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it281.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it282.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it283.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it284.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it285.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it286.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it287.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it288.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it289.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it290.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it291.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it292.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it293.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it294.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it295.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it296.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it297.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it298.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it299.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it300.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it301.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it302.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it303.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it304.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it305.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it306.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it307.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it308.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void BlackScholes::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void BlackScholes::thread_ap_reg_phiprechg_v_1_reg_146pp0_it39() {
    ap_reg_phiprechg_v_1_reg_146pp0_it39 = ap_const_lv64_1;
}

void BlackScholes::thread_ap_reg_ppiten_pp0_it0() {
    ap_reg_ppiten_pp0_it0 = ap_start.read();
}

void BlackScholes::thread_ap_return() {
    ap_return = (!ap_reg_ppstg_tmp_65_reg_962_pp0_it307.read()[0].is_01())? sc_lv<64>(): ((ap_reg_ppstg_tmp_65_reg_962_pp0_it307.read()[0].to_bool())? reg_401.read(): reg_401.read());
}

void BlackScholes::thread_ap_sig_bdd_2595() {
    ap_sig_bdd_2595 = (esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it39.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)));
}

void BlackScholes::thread_ap_sig_bdd_3368() {
    ap_sig_bdd_3368 = (esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it152.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)));
}

void BlackScholes::thread_ap_sig_bdd_3582() {
    ap_sig_bdd_3582 = (esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it291.read()));
}

void BlackScholes::thread_ap_sig_bdd_3619() {
    ap_sig_bdd_3619 = (esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it157.read()) && !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)));
}

void BlackScholes::thread_ap_sig_bdd_3625() {
    ap_sig_bdd_3625 = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_36_reg_1024_pp0_it156.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_24_reg_1130_pp0_it156.read()));
}

void BlackScholes::thread_ap_sig_bdd_3946() {
    ap_sig_bdd_3946 = (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_36_reg_1024_pp0_it151.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_342_p2.read()));
}

void BlackScholes::thread_ap_sig_bdd_4055() {
    ap_sig_bdd_4055 = (esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it303.read()));
}

void BlackScholes::thread_ap_sig_pprstidle_pp0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it0.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it1.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it2.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it3.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it4.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it5.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it6.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it7.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it8.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it9.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it10.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it11.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it12.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it13.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it14.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it15.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it16.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it17.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it18.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it19.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it20.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it21.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it22.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it23.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it24.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it25.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it26.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it27.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it28.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it29.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it30.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it31.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it32.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it33.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it34.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it35.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it36.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it37.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it38.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it39.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it40.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it41.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it42.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it43.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it44.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it45.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it46.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it47.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it48.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it49.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it50.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it51.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it52.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it53.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it54.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it55.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it56.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it57.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it58.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it59.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it60.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it61.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it62.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it63.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it64.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it65.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it66.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it67.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it68.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it69.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it70.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it71.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it72.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it73.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it74.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it75.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it76.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it77.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it78.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it79.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it80.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it81.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it82.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it83.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it84.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it85.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it86.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it87.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it88.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it89.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it90.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it91.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it92.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it93.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it94.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it95.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it96.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it97.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it98.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it99.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it100.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it101.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it102.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it103.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it104.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it105.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it106.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it107.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it108.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it109.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it110.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it111.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it112.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it113.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it114.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it115.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it116.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it117.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it118.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it119.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it120.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it121.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it122.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it123.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it124.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it125.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it126.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it127.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it128.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it129.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it130.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it131.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it132.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it133.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it134.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it135.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it136.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it137.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it138.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it139.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it140.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it141.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it142.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it143.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it144.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it145.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it146.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it147.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it148.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it149.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it150.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it151.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it152.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it153.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it154.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it155.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it156.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it157.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it158.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it159.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it160.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it161.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it162.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it163.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it164.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it165.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it166.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it167.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it168.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it169.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it170.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it171.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it172.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it173.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it174.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it175.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it176.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it177.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it178.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it179.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it180.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it181.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it182.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it183.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it184.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it185.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it186.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it187.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it188.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it189.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it190.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it191.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it192.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it193.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it194.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it195.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it196.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it197.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it198.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it199.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it200.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it201.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it202.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it203.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it204.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it205.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it206.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it207.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it208.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it209.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it210.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it211.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it212.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it213.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it214.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it215.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it216.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it217.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it218.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it219.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it220.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it221.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it222.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it223.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it224.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it225.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it226.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it227.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it228.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it229.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it230.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it231.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it232.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it233.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it234.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it235.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it236.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it237.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it238.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it239.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it240.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it241.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it242.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it243.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it244.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it245.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it246.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it247.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it248.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it249.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it250.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it251.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it252.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it253.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it254.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it255.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it256.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it257.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it258.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it259.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it260.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it261.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it262.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it263.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it264.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it265.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it266.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it267.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it268.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it269.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it270.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it271.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it272.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it273.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it274.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it275.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it276.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it277.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it278.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it279.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it280.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it281.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it282.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it283.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it284.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it285.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it286.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it287.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it288.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it289.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it290.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it291.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it292.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it293.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it294.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it295.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it296.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it297.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it298.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it299.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it300.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it301.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it302.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it303.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it304.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it305.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it306.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_reg_ppiten_pp0_it307.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()))) {
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    } else {
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    }
}

void BlackScholes::thread_ap_sig_start_in_grp_BlackScholes_rand_uint32_fu_179_ap_start() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && 
         !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        ap_sig_start_in_grp_BlackScholes_rand_uint32_fu_179_ap_start = ap_const_logic_1;
    } else {
        ap_sig_start_in_grp_BlackScholes_rand_uint32_fu_179_ap_start = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_159_X() {
    grp_BlackScholes_CND_fu_159_X = ap_reg_ppstg_d1_reg_1180_pp0_it220.read();
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_159_ap_ce() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        grp_BlackScholes_CND_fu_159_ap_ce = ap_const_logic_1;
    } else {
        grp_BlackScholes_CND_fu_159_ap_ce = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_164_X() {
    grp_BlackScholes_CND_fu_164_X = grp_fu_243_p2.read();
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_164_ap_ce() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        grp_BlackScholes_CND_fu_164_ap_ce = ap_const_logic_1;
    } else {
        grp_BlackScholes_CND_fu_164_ap_ce = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_169_X() {
    grp_BlackScholes_CND_fu_169_X = tmp_77_neg_fu_459_p2.read();
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_169_ap_ce() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        grp_BlackScholes_CND_fu_169_ap_ce = ap_const_logic_1;
    } else {
        grp_BlackScholes_CND_fu_169_ap_ce = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_174_X() {
    grp_BlackScholes_CND_fu_174_X = tmp_81_neg_fu_473_p2.read();
}

void BlackScholes::thread_grp_BlackScholes_CND_fu_174_ap_ce() {
    if ((esl_seteq<1,1,1>(ap_ST_pp0_stg0_fsm_0, ap_CS_fsm.read()) && 
         !(esl_seteq<1,1,1>(ap_const_logic_1, ap_reg_ppiten_pp0_it0.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)))) {
        grp_BlackScholes_CND_fu_174_ap_ce = ap_const_logic_1;
    } else {
        grp_BlackScholes_CND_fu_174_ap_ce = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_BlackScholes_rand_uint32_fu_179_ap_ce() {
    grp_BlackScholes_rand_uint32_fu_179_ap_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_BlackScholes_rand_uint32_fu_179_ap_start() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_start_in_grp_BlackScholes_rand_uint32_fu_179_ap_start.read())) {
        grp_BlackScholes_rand_uint32_fu_179_ap_start = ap_sig_start_in_grp_BlackScholes_rand_uint32_fu_179_ap_start.read();
    } else {
        grp_BlackScholes_rand_uint32_fu_179_ap_start = ap_const_logic_0;
    }
}

void BlackScholes::thread_grp_fu_195_ce() {
    grp_fu_195_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_195_p0() {
    grp_fu_195_p0 = ap_reg_ppstg_S_read_reg_954_pp0_it38.read();
}

void BlackScholes::thread_grp_fu_198_ce() {
    grp_fu_198_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_198_p0() {
    grp_fu_198_p0 = tmp_41_reg_1048.read();
}

void BlackScholes::thread_grp_fu_201_ce() {
    grp_fu_201_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_201_p0() {
    grp_fu_201_p0 = tmp_38_reg_1033.read();
}

void BlackScholes::thread_grp_fu_204_ce() {
    grp_fu_204_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_204_p0() {
    grp_fu_204_p0 = tmp_43_reg_1083.read();
}

void BlackScholes::thread_grp_fu_207_ce() {
    grp_fu_207_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_207_p0() {
    grp_fu_207_p0 = ap_const_lv32_0;
}

void BlackScholes::thread_grp_fu_207_p1() {
    grp_fu_207_p1 = tmp_42_reg_1063.read();
}

void BlackScholes::thread_grp_fu_212_ce() {
    grp_fu_212_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_212_p0() {
    grp_fu_212_p0 = ap_const_lv32_0;
}

void BlackScholes::thread_grp_fu_212_p1() {
    grp_fu_212_p1 = tmp_37_reg_1028.read();
}

void BlackScholes::thread_grp_fu_217_ce() {
    grp_fu_217_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_217_p0() {
    grp_fu_217_p0 = tmp_32_reg_992.read();
}

void BlackScholes::thread_grp_fu_217_p1() {
    grp_fu_217_p1 = tmp_33_reg_997.read();
}

void BlackScholes::thread_grp_fu_221_ce() {
    grp_fu_221_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_221_p0() {
    grp_fu_221_p0 = tmp_35_reg_1012.read();
}

void BlackScholes::thread_grp_fu_221_p1() {
    grp_fu_221_p1 = ap_const_lv64_BFF0000000000000;
}

void BlackScholes::thread_grp_fu_226_ce() {
    grp_fu_226_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_226_p0() {
    grp_fu_226_p0 = ap_reg_ppstg_b_read_reg_928_pp0_it93.read();
}

void BlackScholes::thread_grp_fu_226_p1() {
    grp_fu_226_p1 = ap_reg_ppstg_r_read_reg_934_pp0_it93.read();
}

void BlackScholes::thread_grp_fu_230_ce() {
    grp_fu_230_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_230_p0() {
    grp_fu_230_p0 = ap_reg_ppstg_v_reg_1118_pp0_it151.read();
}

void BlackScholes::thread_grp_fu_230_p1() {
    grp_fu_230_p1 = ap_const_lv64_BFE0000000000000;
}

void BlackScholes::thread_grp_fu_235_ce() {
    grp_fu_235_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_235_p0() {
    grp_fu_235_p0 = tmp_55_reg_1144.read();
}

void BlackScholes::thread_grp_fu_235_p1() {
    grp_fu_235_p1 = ap_reg_ppstg_b_read_reg_928_pp0_it169.read();
}

void BlackScholes::thread_grp_fu_239_ce() {
    grp_fu_239_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_239_p0() {
    grp_fu_239_p0 = tmp_53_reg_1159.read();
}

void BlackScholes::thread_grp_fu_239_p1() {
    grp_fu_239_p1 = tmp_57_reg_1164.read();
}

void BlackScholes::thread_grp_fu_243_ce() {
    grp_fu_243_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_243_p0() {
    grp_fu_243_p0 = d1_reg_1180.read();
}

void BlackScholes::thread_grp_fu_243_p1() {
    grp_fu_243_p1 = ap_reg_ppstg_v2_reg_1174_pp0_it216.read();
}

void BlackScholes::thread_grp_fu_248_ce() {
    grp_fu_248_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_248_p0() {
    if (ap_sig_bdd_4055.read()) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it302.read())) {
            grp_fu_248_p0 = reg_395.read();
        } else if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it302.read())) {
            grp_fu_248_p0 = reg_389.read();
        } else {
            grp_fu_248_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_248_p0 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void BlackScholes::thread_grp_fu_248_p1() {
    if (ap_sig_bdd_4055.read()) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it302.read())) {
            grp_fu_248_p1 = reg_389.read();
        } else if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it302.read())) {
            grp_fu_248_p1 = reg_395.read();
        } else {
            grp_fu_248_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        }
    } else {
        grp_fu_248_p1 = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
    }
}

void BlackScholes::thread_grp_fu_252_ce() {
    grp_fu_252_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_252_p0() {
    grp_fu_252_p0 = tmp_s_reg_982.read();
}

void BlackScholes::thread_grp_fu_252_p1() {
    grp_fu_252_p1 = ap_const_lv64_4190000000000000;
}

void BlackScholes::thread_grp_fu_257_ce() {
    grp_fu_257_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_257_p0() {
    grp_fu_257_p0 = tmp_34_reg_1002.read();
}

void BlackScholes::thread_grp_fu_257_p1() {
    grp_fu_257_p1 = ap_const_lv64_3CA0000000000000;
}

void BlackScholes::thread_grp_fu_262_ce() {
    grp_fu_262_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_262_p0() {
    grp_fu_262_p0 = U_reg_1007.read();
}

void BlackScholes::thread_grp_fu_262_p1() {
    grp_fu_262_p1 = ap_const_lv64_4000000000000000;
}

void BlackScholes::thread_grp_fu_267_ce() {
    grp_fu_267_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_267_p0() {
    grp_fu_267_p0 = tmp_39_reg_1038.read();
}

void BlackScholes::thread_grp_fu_267_p1() {
    grp_fu_267_p1 = ap_const_lv64_4000000000000000;
}

void BlackScholes::thread_grp_fu_272_ce() {
    grp_fu_272_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_272_p0() {
    grp_fu_272_p0 = tmp_61_neg_reg_1053.read();
}

void BlackScholes::thread_grp_fu_272_p1() {
    grp_fu_272_p1 = ap_reg_ppstg_T_read_reg_940_pp0_it94.read();
}

void BlackScholes::thread_grp_fu_276_ce() {
    grp_fu_276_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_276_p0() {
    grp_fu_276_p0 = tmp_46_reg_1068.read();
}

void BlackScholes::thread_grp_fu_276_p1() {
    grp_fu_276_p1 = ap_reg_ppstg_T_read_reg_940_pp0_it98.read();
}

void BlackScholes::thread_grp_fu_280_ce() {
    grp_fu_280_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_280_p0() {
    grp_fu_280_p0 = ap_reg_ppstg_v_4_reg_1017_pp0_it112.read();
}

void BlackScholes::thread_grp_fu_280_p1() {
    grp_fu_280_p1 = tmp_44_reg_1088.read();
}

void BlackScholes::thread_grp_fu_284_ce() {
    grp_fu_284_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_284_p0() {
    grp_fu_284_p0 = tmp_51_reg_1098.read();
}

void BlackScholes::thread_grp_fu_284_p1() {
    grp_fu_284_p1 = ap_reg_ppstg_X_read_reg_948_pp0_it118.read();
}

void BlackScholes::thread_grp_fu_288_ce() {
    grp_fu_288_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_288_p0() {
    grp_fu_288_p0 = tmp_48_reg_1103.read();
}

void BlackScholes::thread_grp_fu_288_p1() {
    grp_fu_288_p1 = ap_reg_ppstg_S_read_reg_954_pp0_it122.read();
}

void BlackScholes::thread_grp_fu_292_ce() {
    grp_fu_292_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_292_p0() {
    grp_fu_292_p0 = ap_reg_phiprechg_v_1_reg_146pp0_it158.read();
}

void BlackScholes::thread_grp_fu_292_p1() {
    grp_fu_292_p1 = ap_reg_phiprechg_v_1_reg_146pp0_it158.read();
}

void BlackScholes::thread_grp_fu_298_ce() {
    grp_fu_298_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_298_p0() {
    grp_fu_298_p0 = tmp_54_reg_1139.read();
}

void BlackScholes::thread_grp_fu_298_p1() {
    grp_fu_298_p1 = ap_const_lv64_3FE0000000000000;
}

void BlackScholes::thread_grp_fu_303_ce() {
    grp_fu_303_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_303_p0() {
    grp_fu_303_p0 = tmp_56_reg_1149.read();
}

void BlackScholes::thread_grp_fu_303_p1() {
    grp_fu_303_p1 = ap_reg_ppstg_T_read_reg_940_pp0_it174.read();
}

void BlackScholes::thread_grp_fu_307_ce() {
    grp_fu_307_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_307_p0() {
    grp_fu_307_p0 = ap_reg_ppstg_v_1_reg_146_pp0_it179.read();
}

void BlackScholes::thread_grp_fu_307_p1() {
    grp_fu_307_p1 = tmp_58_reg_1154.read();
}

void BlackScholes::thread_grp_fu_312_ce() {
    grp_fu_312_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_312_p0() {
    grp_fu_312_p0 = ap_reg_ppstg_t1_reg_1113_pp0_it296.read();
}

void BlackScholes::thread_grp_fu_312_p1() {
    grp_fu_312_p1 = reg_379.read();
}

void BlackScholes::thread_grp_fu_316_ce() {
    grp_fu_316_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_316_p0() {
    grp_fu_316_p0 = ap_reg_ppstg_t2_reg_1108_pp0_it296.read();
}

void BlackScholes::thread_grp_fu_316_p1() {
    grp_fu_316_p1 = reg_384.read();
}

void BlackScholes::thread_grp_fu_320_ce() {
    grp_fu_320_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_320_p0() {
    grp_fu_320_p0 = tmp_40_reg_1043.read();
}

void BlackScholes::thread_grp_fu_320_p1() {
    grp_fu_320_p1 = ap_reg_ppstg_S_read_reg_954_pp0_it63.read();
}

void BlackScholes::thread_grp_fu_324_ce() {
    grp_fu_324_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_324_p0() {
    grp_fu_324_p0 = tmp_45_reg_1093.read();
}

void BlackScholes::thread_grp_fu_324_p1() {
    grp_fu_324_p1 = ap_const_lv64_42374876E8000000;
}

void BlackScholes::thread_grp_fu_329_ce() {
    grp_fu_329_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_329_p0() {
    grp_fu_329_p0 = ap_reg_ppstg_S_read_reg_954_pp0_it118.read();
}

void BlackScholes::thread_grp_fu_329_p1() {
    grp_fu_329_p1 = ap_reg_ppstg_X_read_reg_948_pp0_it118.read();
}

void BlackScholes::thread_grp_fu_333_ce() {
    grp_fu_333_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_333_p0() {
    grp_fu_333_p0 = v1_reg_1169.read();
}

void BlackScholes::thread_grp_fu_333_p1() {
    grp_fu_333_p1 = v2_reg_1174.read();
}

void BlackScholes::thread_grp_fu_337_ce() {
    grp_fu_337_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_337_opcode() {
    grp_fu_337_opcode = ap_const_lv5_4;
}

void BlackScholes::thread_grp_fu_337_p0() {
    grp_fu_337_p0 = v_4_reg_1017.read();
}

void BlackScholes::thread_grp_fu_337_p1() {
    grp_fu_337_p1 = ap_const_lv64_3FF0000000000000;
}

void BlackScholes::thread_grp_fu_342_ce() {
    grp_fu_342_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_342_opcode() {
    grp_fu_342_opcode = ap_const_lv5_3;
}

void BlackScholes::thread_grp_fu_342_p0() {
    grp_fu_342_p0 = v_reg_1118.read();
}

void BlackScholes::thread_grp_fu_342_p1() {
    grp_fu_342_p1 = ap_const_lv64_3FF0000000000000;
}

void BlackScholes::thread_grp_fu_347_ce() {
    grp_fu_347_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_347_p0() {
    grp_fu_347_p0 = esl_sext<64,27>(tmp_3_reg_967.read());
}

void BlackScholes::thread_grp_fu_350_ce() {
    grp_fu_350_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_350_p0() {
    grp_fu_350_p0 = esl_zext<64,63>(tmp_66_fu_438_p0.read());
}

void BlackScholes::thread_grp_fu_353_ce() {
    grp_fu_353_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_353_p0() {
    if (ap_sig_bdd_3582.read()) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it290.read())) {
            grp_fu_353_p0 = result_V_2_reg_1236.read();
        } else if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it290.read())) {
            grp_fu_353_p0 = result_V_reg_1226.read();
        } else {
            grp_fu_353_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        grp_fu_353_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void BlackScholes::thread_grp_fu_356_ce() {
    grp_fu_356_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_356_p0() {
    if (ap_sig_bdd_3582.read()) {
        if (esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it290.read())) {
            grp_fu_356_p0 = p_Val2_18_fu_904_p3.read().range(83, 52);
        } else if (!esl_seteq<1,1,1>(ap_const_lv1_0, ap_reg_ppstg_tmp_65_reg_962_pp0_it290.read())) {
            grp_fu_356_p0 = result_V_1_reg_1231.read();
        } else {
            grp_fu_356_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
        }
    } else {
        grp_fu_356_p0 =  (sc_lv<32>) ("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX");
    }
}

void BlackScholes::thread_grp_fu_359_ce() {
    grp_fu_359_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_359_p0() {
    grp_fu_359_p0 = ap_const_lv64_0;
}

void BlackScholes::thread_grp_fu_359_p1() {
    grp_fu_359_p1 = ap_reg_ppstg_T_read_reg_940_pp0_it148.read();
}

void BlackScholes::thread_grp_fu_364_ce() {
    grp_fu_364_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_364_p0() {
    grp_fu_364_p0 = ap_const_lv64_0;
}

void BlackScholes::thread_grp_fu_364_p1() {
    grp_fu_364_p1 = tmp_52_reg_1125.read();
}

void BlackScholes::thread_grp_fu_369_ce() {
    grp_fu_369_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_369_p0() {
    grp_fu_369_p0 = ap_const_lv64_0;
}

void BlackScholes::thread_grp_fu_369_p1() {
    grp_fu_369_p1 = tmp_50_reg_1073.read();
}

void BlackScholes::thread_grp_fu_374_ce() {
    grp_fu_374_ce = ap_const_logic_1;
}

void BlackScholes::thread_grp_fu_374_p0() {
    grp_fu_374_p0 = ap_const_lv64_0;
}

void BlackScholes::thread_grp_fu_374_p1() {
    grp_fu_374_p1 = tmp_47_reg_1078.read();
}

void BlackScholes::thread_isNeg_1_fu_649_p3() {
    isNeg_1_fu_649_p3 = sh_assign_2_fu_643_p2.read().range(11, 11);
}

void BlackScholes::thread_isNeg_2_fu_740_p3() {
    isNeg_2_fu_740_p3 = sh_assign_4_fu_734_p2.read().range(11, 11);
}

void BlackScholes::thread_isNeg_3_fu_851_p3() {
    isNeg_3_fu_851_p3 = sh_assign_6_fu_845_p2.read().range(11, 11);
}

void BlackScholes::thread_isNeg_fu_558_p3() {
    isNeg_fu_558_p3 = sh_assign_fu_552_p2.read().range(11, 11);
}

void BlackScholes::thread_loc_V_1_fu_498_p1() {
    loc_V_1_fu_498_p1 = p_Val2_s_fu_484_p1.read().range(52-1, 0);
}

void BlackScholes::thread_loc_V_3_fu_516_p1() {
    loc_V_3_fu_516_p1 = p_Val2_5_fu_502_p1.read().range(52-1, 0);
}

void BlackScholes::thread_loc_V_5_fu_534_p1() {
    loc_V_5_fu_534_p1 = p_Val2_10_fu_520_p1.read().range(52-1, 0);
}

void BlackScholes::thread_loc_V_6_fu_815_p4() {
    loc_V_6_fu_815_p4 = p_Val2_15_fu_811_p1.read().range(62, 52);
}

void BlackScholes::thread_loc_V_7_fu_825_p1() {
    loc_V_7_fu_825_p1 = p_Val2_15_fu_811_p1.read().range(52-1, 0);
}

void BlackScholes::thread_p_Result_4_fu_629_p3() {
    p_Result_4_fu_629_p3 = esl_concat<1,52>(ap_const_lv1_1, loc_V_3_reg_1210.read());
}

void BlackScholes::thread_p_Result_5_fu_720_p3() {
    p_Result_5_fu_720_p3 = esl_concat<1,52>(ap_const_lv1_1, loc_V_5_reg_1221.read());
}

void BlackScholes::thread_p_Result_6_fu_829_p3() {
    p_Result_6_fu_829_p3 = esl_concat<1,52>(ap_const_lv1_1, loc_V_7_fu_825_p1.read());
}

void BlackScholes::thread_p_Result_s_fu_538_p3() {
    p_Result_s_fu_538_p3 = esl_concat<1,52>(ap_const_lv1_1, loc_V_1_reg_1199.read());
}

void BlackScholes::thread_p_Val2_10_fu_520_p1() {
    p_Val2_10_fu_520_p1 = grp_BlackScholes_CND_fu_169_ap_return.read();
}

void BlackScholes::thread_p_Val2_13_fu_793_p3() {
    p_Val2_13_fu_793_p3 = (!isNeg_2_fu_740_p3.read()[0].is_01())? sc_lv<136>(): ((isNeg_2_fu_740_p3.read()[0].to_bool())? tmp_86_i_i28_cast_fu_783_p1.read(): tmp_88_i_i2_fu_787_p2.read());
}

void BlackScholes::thread_p_Val2_15_fu_811_p1() {
    p_Val2_15_fu_811_p1 = grp_BlackScholes_CND_fu_174_ap_return.read();
}

void BlackScholes::thread_p_Val2_18_fu_904_p3() {
    p_Val2_18_fu_904_p3 = (!isNeg_3_reg_1241.read()[0].is_01())? sc_lv<136>(): ((isNeg_3_reg_1241.read()[0].to_bool())? tmp_86_i_i44_cast_fu_901_p1.read(): tmp_88_i_i3_reg_1251.read());
}

void BlackScholes::thread_p_Val2_3_fu_611_p3() {
    p_Val2_3_fu_611_p3 = (!isNeg_fu_558_p3.read()[0].is_01())? sc_lv<136>(): ((isNeg_fu_558_p3.read()[0].to_bool())? tmp_86_i_i_cast_fu_601_p1.read(): tmp_88_i_i_fu_605_p2.read());
}

void BlackScholes::thread_p_Val2_5_fu_502_p1() {
    p_Val2_5_fu_502_p1 = grp_BlackScholes_CND_fu_164_ap_return.read();
}

void BlackScholes::thread_p_Val2_8_fu_702_p3() {
    p_Val2_8_fu_702_p3 = (!isNeg_1_fu_649_p3.read()[0].is_01())? sc_lv<136>(): ((isNeg_1_fu_649_p3.read()[0].to_bool())? tmp_86_i_i12_cast_fu_692_p1.read(): tmp_88_i_i1_fu_696_p2.read());
}

void BlackScholes::thread_p_Val2_s_fu_484_p1() {
    p_Val2_s_fu_484_p1 = grp_BlackScholes_CND_fu_159_ap_return.read();
}

void BlackScholes::thread_sh_assign_1_fu_575_p1() {
    sh_assign_1_fu_575_p1 = esl_sext<12,11>(tmp_i_i_101_fu_566_p2.read());
}

void BlackScholes::thread_sh_assign_1_fu_575_p3() {
    sh_assign_1_fu_575_p3 = (!isNeg_fu_558_p3.read()[0].is_01())? sc_lv<12>(): ((isNeg_fu_558_p3.read()[0].to_bool())? sh_assign_1_fu_575_p1.read(): sh_assign_fu_552_p2.read());
}

void BlackScholes::thread_sh_assign_1_i10_cast_fu_674_p1() {
    sh_assign_1_i10_cast_fu_674_p1 = esl_sext<32,12>(sh_assign_3_fu_666_p3.read());
}

void BlackScholes::thread_sh_assign_1_i26_cast_fu_765_p1() {
    sh_assign_1_i26_cast_fu_765_p1 = esl_sext<32,12>(sh_assign_5_fu_757_p3.read());
}

void BlackScholes::thread_sh_assign_1_i42_cast_fu_877_p1() {
    sh_assign_1_i42_cast_fu_877_p1 = esl_sext<32,12>(sh_assign_7_fu_869_p3.read());
}

void BlackScholes::thread_sh_assign_1_i_cast_fu_583_p1() {
    sh_assign_1_i_cast_fu_583_p1 = esl_sext<32,12>(sh_assign_1_fu_575_p3.read());
}

void BlackScholes::thread_sh_assign_2_fu_643_p2() {
    sh_assign_2_fu_643_p2 = (!tmp_i_i_i6_cast_fu_640_p1.read().is_01() || !ap_const_lv12_C01.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_i_i_i6_cast_fu_640_p1.read()) + sc_biguint<12>(ap_const_lv12_C01));
}

void BlackScholes::thread_sh_assign_3_fu_666_p1() {
    sh_assign_3_fu_666_p1 = esl_sext<12,11>(tmp_i_i9_fu_657_p2.read());
}

void BlackScholes::thread_sh_assign_3_fu_666_p3() {
    sh_assign_3_fu_666_p3 = (!isNeg_1_fu_649_p3.read()[0].is_01())? sc_lv<12>(): ((isNeg_1_fu_649_p3.read()[0].to_bool())? sh_assign_3_fu_666_p1.read(): sh_assign_2_fu_643_p2.read());
}

void BlackScholes::thread_sh_assign_4_fu_734_p2() {
    sh_assign_4_fu_734_p2 = (!tmp_i_i_i22_cast_fu_731_p1.read().is_01() || !ap_const_lv12_C01.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_i_i_i22_cast_fu_731_p1.read()) + sc_biguint<12>(ap_const_lv12_C01));
}

void BlackScholes::thread_sh_assign_5_fu_757_p1() {
    sh_assign_5_fu_757_p1 = esl_sext<12,11>(tmp_i_i1_102_fu_748_p2.read());
}

void BlackScholes::thread_sh_assign_5_fu_757_p3() {
    sh_assign_5_fu_757_p3 = (!isNeg_2_fu_740_p3.read()[0].is_01())? sc_lv<12>(): ((isNeg_2_fu_740_p3.read()[0].to_bool())? sh_assign_5_fu_757_p1.read(): sh_assign_4_fu_734_p2.read());
}

void BlackScholes::thread_sh_assign_6_fu_845_p2() {
    sh_assign_6_fu_845_p2 = (!tmp_i_i_i38_cast_fu_841_p1.read().is_01() || !ap_const_lv12_C01.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_i_i_i38_cast_fu_841_p1.read()) + sc_biguint<12>(ap_const_lv12_C01));
}

void BlackScholes::thread_sh_assign_7_fu_869_p1() {
    sh_assign_7_fu_869_p1 = esl_sext<12,11>(tmp_i_i2_103_fu_859_p2.read());
}

void BlackScholes::thread_sh_assign_7_fu_869_p3() {
    sh_assign_7_fu_869_p3 = (!isNeg_3_fu_851_p3.read()[0].is_01())? sc_lv<12>(): ((isNeg_3_fu_851_p3.read()[0].to_bool())? sh_assign_7_fu_869_p1.read(): sh_assign_6_fu_845_p2.read());
}

void BlackScholes::thread_sh_assign_fu_552_p2() {
    sh_assign_fu_552_p2 = (!tmp_i_i_i_cast_fu_549_p1.read().is_01() || !ap_const_lv12_C01.is_01())? sc_lv<12>(): (sc_bigint<12>(tmp_i_i_i_cast_fu_549_p1.read()) + sc_biguint<12>(ap_const_lv12_C01));
}

void BlackScholes::thread_tmp_61_neg_fu_446_p2() {
    tmp_61_neg_fu_446_p2 = (tmp_61_to_int_fu_443_p1.read() ^ ap_const_lv64_8000000000000000);
}

void BlackScholes::thread_tmp_61_to_int_fu_443_p1() {
    tmp_61_to_int_fu_443_p1 = ap_reg_ppstg_r_read_reg_934_pp0_it93.read();
}

void BlackScholes::thread_tmp_65_fu_405_p2() {
    tmp_65_fu_405_p2 = (!CallPutFlag.read().is_01() || !ap_const_lv8_63.is_01())? sc_lv<1>(): sc_lv<1>(CallPutFlag.read() == ap_const_lv8_63);
}

void BlackScholes::thread_tmp_66_fu_438_p0() {
    tmp_66_fu_438_p0 = esl_sext<63,26>(ap_reg_ppstg_tmp_5_reg_972_pp0_it8.read());
}

void BlackScholes::thread_tmp_77_neg_fu_459_p2() {
    tmp_77_neg_fu_459_p2 = (tmp_77_to_int_fu_456_p1.read() ^ ap_const_lv64_8000000000000000);
}

void BlackScholes::thread_tmp_77_to_int_fu_456_p1() {
    tmp_77_to_int_fu_456_p1 = ap_reg_ppstg_d1_reg_1180_pp0_it220.read();
}

void BlackScholes::thread_tmp_81_neg_fu_473_p2() {
    tmp_81_neg_fu_473_p2 = (tmp_81_to_int_fu_470_p1.read() ^ ap_const_lv64_8000000000000000);
}

void BlackScholes::thread_tmp_81_to_int_fu_470_p1() {
    tmp_81_to_int_fu_470_p1 = d2_reg_1187.read();
}

void BlackScholes::thread_tmp_85_i_i11_cast_fu_682_p0() {
    tmp_85_i_i11_cast_fu_682_p0 = sh_assign_1_i10_cast_fu_674_p1.read();
}

void BlackScholes::thread_tmp_85_i_i11_cast_fu_682_p1() {
    tmp_85_i_i11_cast_fu_682_p1 = esl_zext<53,32>(tmp_85_i_i11_cast_fu_682_p0.read());
}

void BlackScholes::thread_tmp_85_i_i1_fu_678_p0() {
    tmp_85_i_i1_fu_678_p0 = sh_assign_1_i10_cast_fu_674_p1.read();
}

void BlackScholes::thread_tmp_85_i_i1_fu_678_p1() {
    tmp_85_i_i1_fu_678_p1 = esl_zext<136,32>(tmp_85_i_i1_fu_678_p0.read());
}

void BlackScholes::thread_tmp_85_i_i27_cast_fu_773_p0() {
    tmp_85_i_i27_cast_fu_773_p0 = sh_assign_1_i26_cast_fu_765_p1.read();
}

void BlackScholes::thread_tmp_85_i_i27_cast_fu_773_p1() {
    tmp_85_i_i27_cast_fu_773_p1 = esl_zext<53,32>(tmp_85_i_i27_cast_fu_773_p0.read());
}

void BlackScholes::thread_tmp_85_i_i2_fu_769_p0() {
    tmp_85_i_i2_fu_769_p0 = sh_assign_1_i26_cast_fu_765_p1.read();
}

void BlackScholes::thread_tmp_85_i_i2_fu_769_p1() {
    tmp_85_i_i2_fu_769_p1 = esl_zext<136,32>(tmp_85_i_i2_fu_769_p0.read());
}

void BlackScholes::thread_tmp_85_i_i3_fu_881_p0() {
    tmp_85_i_i3_fu_881_p0 = sh_assign_1_i42_cast_fu_877_p1.read();
}

void BlackScholes::thread_tmp_85_i_i3_fu_881_p1() {
    tmp_85_i_i3_fu_881_p1 = esl_zext<136,32>(tmp_85_i_i3_fu_881_p0.read());
}

void BlackScholes::thread_tmp_85_i_i43_cast_fu_885_p0() {
    tmp_85_i_i43_cast_fu_885_p0 = sh_assign_1_i42_cast_fu_877_p1.read();
}

void BlackScholes::thread_tmp_85_i_i43_cast_fu_885_p1() {
    tmp_85_i_i43_cast_fu_885_p1 = esl_zext<53,32>(tmp_85_i_i43_cast_fu_885_p0.read());
}

void BlackScholes::thread_tmp_85_i_i_cast_fu_591_p0() {
    tmp_85_i_i_cast_fu_591_p0 = sh_assign_1_i_cast_fu_583_p1.read();
}

void BlackScholes::thread_tmp_85_i_i_cast_fu_591_p1() {
    tmp_85_i_i_cast_fu_591_p1 = esl_zext<53,32>(tmp_85_i_i_cast_fu_591_p0.read());
}

void BlackScholes::thread_tmp_85_i_i_fu_587_p0() {
    tmp_85_i_i_fu_587_p0 = sh_assign_1_i_cast_fu_583_p1.read();
}

void BlackScholes::thread_tmp_85_i_i_fu_587_p1() {
    tmp_85_i_i_fu_587_p1 = esl_zext<136,32>(tmp_85_i_i_fu_587_p0.read());
}

void BlackScholes::thread_tmp_86_i_i12_cast_fu_692_p1() {
    tmp_86_i_i12_cast_fu_692_p1 = esl_zext<136,53>(tmp_86_i_i1_fu_686_p2.read());
}

void BlackScholes::thread_tmp_86_i_i1_fu_686_p2() {
    tmp_86_i_i1_fu_686_p2 = (!tmp_85_i_i11_cast_fu_682_p1.read().is_01())? sc_lv<53>(): p_Result_4_fu_629_p3.read() >> (unsigned short)tmp_85_i_i11_cast_fu_682_p1.read().to_uint();
}

void BlackScholes::thread_tmp_86_i_i28_cast_fu_783_p1() {
    tmp_86_i_i28_cast_fu_783_p1 = esl_zext<136,53>(tmp_86_i_i2_fu_777_p2.read());
}

void BlackScholes::thread_tmp_86_i_i2_fu_777_p2() {
    tmp_86_i_i2_fu_777_p2 = (!tmp_85_i_i27_cast_fu_773_p1.read().is_01())? sc_lv<53>(): p_Result_5_fu_720_p3.read() >> (unsigned short)tmp_85_i_i27_cast_fu_773_p1.read().to_uint();
}

void BlackScholes::thread_tmp_86_i_i3_fu_889_p2() {
    tmp_86_i_i3_fu_889_p2 = (!tmp_85_i_i43_cast_fu_885_p1.read().is_01())? sc_lv<53>(): p_Result_6_fu_829_p3.read() >> (unsigned short)tmp_85_i_i43_cast_fu_885_p1.read().to_uint();
}

void BlackScholes::thread_tmp_86_i_i44_cast_fu_901_p1() {
    tmp_86_i_i44_cast_fu_901_p1 = esl_zext<136,53>(tmp_86_i_i3_reg_1246.read());
}

void BlackScholes::thread_tmp_86_i_i_cast_fu_601_p1() {
    tmp_86_i_i_cast_fu_601_p1 = esl_zext<136,53>(tmp_86_i_i_fu_595_p2.read());
}

void BlackScholes::thread_tmp_86_i_i_fu_595_p2() {
    tmp_86_i_i_fu_595_p2 = (!tmp_85_i_i_cast_fu_591_p1.read().is_01())? sc_lv<53>(): p_Result_s_fu_538_p3.read() >> (unsigned short)tmp_85_i_i_cast_fu_591_p1.read().to_uint();
}

void BlackScholes::thread_tmp_88_i_i1_fu_696_p2() {
    tmp_88_i_i1_fu_696_p2 = (!tmp_85_i_i1_fu_678_p1.read().is_01())? sc_lv<136>(): tmp_i_i5_fu_636_p1.read() << (unsigned short)tmp_85_i_i1_fu_678_p1.read().to_uint();
}

void BlackScholes::thread_tmp_88_i_i2_fu_787_p2() {
    tmp_88_i_i2_fu_787_p2 = (!tmp_85_i_i2_fu_769_p1.read().is_01())? sc_lv<136>(): tmp_i_i1_fu_727_p1.read() << (unsigned short)tmp_85_i_i2_fu_769_p1.read().to_uint();
}

void BlackScholes::thread_tmp_88_i_i3_fu_895_p2() {
    tmp_88_i_i3_fu_895_p2 = (!tmp_85_i_i3_fu_881_p1.read().is_01())? sc_lv<136>(): tmp_i_i2_fu_837_p1.read() << (unsigned short)tmp_85_i_i3_fu_881_p1.read().to_uint();
}

void BlackScholes::thread_tmp_88_i_i_fu_605_p2() {
    tmp_88_i_i_fu_605_p2 = (!tmp_85_i_i_fu_587_p1.read().is_01())? sc_lv<136>(): tmp_i_i_fu_545_p1.read() << (unsigned short)tmp_85_i_i_fu_587_p1.read().to_uint();
}

void BlackScholes::thread_tmp_i_i1_102_fu_748_p2() {
    tmp_i_i1_102_fu_748_p2 = (!ap_const_lv11_3FF.is_01() || !loc_V_4_reg_1215.read().is_01())? sc_lv<11>(): (sc_bigint<11>(ap_const_lv11_3FF) - sc_biguint<11>(loc_V_4_reg_1215.read()));
}

void BlackScholes::thread_tmp_i_i1_fu_727_p1() {
    tmp_i_i1_fu_727_p1 = esl_zext<136,53>(p_Result_5_fu_720_p3.read());
}

void BlackScholes::thread_tmp_i_i2_103_fu_859_p2() {
    tmp_i_i2_103_fu_859_p2 = (!ap_const_lv11_3FF.is_01() || !loc_V_6_fu_815_p4.read().is_01())? sc_lv<11>(): (sc_bigint<11>(ap_const_lv11_3FF) - sc_biguint<11>(loc_V_6_fu_815_p4.read()));
}

void BlackScholes::thread_tmp_i_i2_fu_837_p1() {
    tmp_i_i2_fu_837_p1 = esl_zext<136,53>(p_Result_6_fu_829_p3.read());
}

void BlackScholes::thread_tmp_i_i5_fu_636_p1() {
    tmp_i_i5_fu_636_p1 = esl_zext<136,53>(p_Result_4_fu_629_p3.read());
}

void BlackScholes::thread_tmp_i_i9_fu_657_p2() {
    tmp_i_i9_fu_657_p2 = (!ap_const_lv11_3FF.is_01() || !loc_V_2_reg_1204.read().is_01())? sc_lv<11>(): (sc_bigint<11>(ap_const_lv11_3FF) - sc_biguint<11>(loc_V_2_reg_1204.read()));
}

void BlackScholes::thread_tmp_i_i_101_fu_566_p2() {
    tmp_i_i_101_fu_566_p2 = (!ap_const_lv11_3FF.is_01() || !loc_V_reg_1193.read().is_01())? sc_lv<11>(): (sc_bigint<11>(ap_const_lv11_3FF) - sc_biguint<11>(loc_V_reg_1193.read()));
}

void BlackScholes::thread_tmp_i_i_fu_545_p1() {
    tmp_i_i_fu_545_p1 = esl_zext<136,53>(p_Result_s_fu_538_p3.read());
}

void BlackScholes::thread_tmp_i_i_i22_cast_fu_731_p1() {
    tmp_i_i_i22_cast_fu_731_p1 = esl_zext<12,11>(loc_V_4_reg_1215.read());
}

void BlackScholes::thread_tmp_i_i_i38_cast_fu_841_p1() {
    tmp_i_i_i38_cast_fu_841_p1 = esl_zext<12,11>(loc_V_6_fu_815_p4.read());
}

void BlackScholes::thread_tmp_i_i_i6_cast_fu_640_p1() {
    tmp_i_i_i6_cast_fu_640_p1 = esl_zext<12,11>(loc_V_2_reg_1204.read());
}

void BlackScholes::thread_tmp_i_i_i_cast_fu_549_p1() {
    tmp_i_i_i_cast_fu_549_p1 = esl_zext<12,11>(loc_V_reg_1193.read());
}

}

