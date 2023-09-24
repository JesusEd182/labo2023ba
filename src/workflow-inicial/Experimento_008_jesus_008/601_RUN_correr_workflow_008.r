# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/601_RUN_correr_workflow_008.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/621_DR_corregir_drifting_008.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/631_FE_historia_008.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/641_TS_training_strategy_008.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/651_HT_lightgbm_008.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_008/661_ZZ_final_008.r")
