# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_006/611_CA_reparar_dataset__008_jesus_006.r")
source("~/labo2023ba/srcworkflow-inicial/Experimento_008_jesus_006/621_DR_corregir_drifting_008_jesus_006.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_006/631_FE_historia_experimento_008_jesus_006.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_006/641_TS_training_strategy_experimento_008_006.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_006/651_HT_lightgbm_experimento_008_jesus_006.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus_006/661_ZZ_final_experimento_008_jesus_006.r")