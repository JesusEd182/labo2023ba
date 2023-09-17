# Corrida general del workflow

options(error = function() {
  traceback(20)
  options(error = NULL)
  stop("exiting after script error")
})


# corrida de cada paso del workflow

# primeros pasos, relativamente rapidos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/611_CA_reparar_dataset_experimento_008_jesus_001.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/621_DR_corregir_drifting_experimento_008_jesus_001.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/631_FE_historia_experimento_008_jesus_001.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/641_TS_training_strategy_experimento_008_jesus_001.r")

# ultimos pasos, muy lentos
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/651_HT_lightgbm_experimento_008_jesus_001.r")
source("~/labo2023ba/src/workflow-inicial/Experimento_008_jesus/661_ZZ_final_experimento_008_jesus_001.r")
