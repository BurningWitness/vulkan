{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stageCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pStages" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"groupCount" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pGroups" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxPipelineRayRecursionDepth" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pLibraryInfo" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pLibraryInterface" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pDynamicState" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineIndex" ptr)

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