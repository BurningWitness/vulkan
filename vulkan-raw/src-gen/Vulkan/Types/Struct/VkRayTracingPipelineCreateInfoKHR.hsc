{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_ray_tracing_pipeline

module Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineDynamicStateCreateInfo
import Vulkan.Types.Struct.VkPipelineLibraryCreateInfoKHR
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo
import Vulkan.Types.Struct.VkRayTracingPipelineInterfaceCreateInfoKHR
import Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoKHR



data {-# CTYPE "vulkan/vulkan.h" "VkRayTracingPipelineCreateInfoKHR" #-} VkRayTracingPipelineCreateInfoKHR =
       VkRayTracingPipelineCreateInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCreateFlags -- ^ Pipeline creation flags
         , stageCount :: #{type uint32_t}
         , pStages :: Ptr VkPipelineShaderStageCreateInfo -- ^ One entry for each active shader stage
         , groupCount :: #{type uint32_t}
         , pGroups :: Ptr VkRayTracingShaderGroupCreateInfoKHR
         , maxPipelineRayRecursionDepth :: #{type uint32_t}
         , pLibraryInfo :: Ptr VkPipelineLibraryCreateInfoKHR
         , pLibraryInterface :: Ptr VkRayTracingPipelineInterfaceCreateInfoKHR
         , pDynamicState :: Ptr VkPipelineDynamicStateCreateInfo
         , layout :: VkPipelineLayout -- ^ Interface layout of the pipeline
         , basePipelineHandle :: VkPipeline -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of
         , basePipelineIndex :: #{type int32_t} -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of
         }

instance Storable VkRayTracingPipelineCreateInfoKHR where
  sizeOf    _ = #{size      VkRayTracingPipelineCreateInfoKHR}
  alignment _ = #{alignment VkRayTracingPipelineCreateInfoKHR}

  peek ptr = 
    VkRayTracingPipelineCreateInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"stageCount" ptr)
       <*> peek (offset @"pStages" ptr)
       <*> peek (offset @"groupCount" ptr)
       <*> peek (offset @"pGroups" ptr)
       <*> peek (offset @"maxPipelineRayRecursionDepth" ptr)
       <*> peek (offset @"pLibraryInfo" ptr)
       <*> peek (offset @"pLibraryInterface" ptr)
       <*> peek (offset @"pDynamicState" ptr)
       <*> peek (offset @"layout" ptr)
       <*> peek (offset @"basePipelineHandle" ptr)
       <*> peek (offset @"basePipelineIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"stageCount" ptr val
    pokeField @"pStages" ptr val
    pokeField @"groupCount" ptr val
    pokeField @"pGroups" ptr val
    pokeField @"maxPipelineRayRecursionDepth" ptr val
    pokeField @"pLibraryInfo" ptr val
    pokeField @"pLibraryInterface" ptr val
    pokeField @"pDynamicState" ptr val
    pokeField @"layout" ptr val
    pokeField @"basePipelineHandle" ptr val
    pokeField @"basePipelineIndex" ptr val

instance Offset "sType" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, sType}

instance Offset "pNext" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pNext}

instance Offset "flags" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, flags}

instance Offset "stageCount" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, stageCount}

instance Offset "pStages" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pStages}

instance Offset "groupCount" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, groupCount}

instance Offset "pGroups" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pGroups}

instance Offset "maxPipelineRayRecursionDepth" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, maxPipelineRayRecursionDepth}

instance Offset "pLibraryInfo" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pLibraryInfo}

instance Offset "pLibraryInterface" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pLibraryInterface}

instance Offset "pDynamicState" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, pDynamicState}

instance Offset "layout" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, layout}

instance Offset "basePipelineHandle" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, basePipelineHandle}

instance Offset "basePipelineIndex" VkRayTracingPipelineCreateInfoKHR where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoKHR, basePipelineIndex}

#else

module Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoKHR where

#endif