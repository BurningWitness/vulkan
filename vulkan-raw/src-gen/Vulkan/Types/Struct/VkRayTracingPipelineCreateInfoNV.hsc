{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_ray_tracing

module Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo
import Vulkan.Types.Struct.VkRayTracingShaderGroupCreateInfoNV



data {-# CTYPE "vulkan/vulkan.h" "VkRayTracingPipelineCreateInfoNV" #-} VkRayTracingPipelineCreateInfoNV =
       VkRayTracingPipelineCreateInfoNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCreateFlags -- ^ Pipeline creation flags
         , stageCount :: #{type uint32_t}
         , pStages :: Ptr VkPipelineShaderStageCreateInfo -- ^ One entry for each active shader stage
         , groupCount :: #{type uint32_t}
         , pGroups :: Ptr VkRayTracingShaderGroupCreateInfoNV
         , maxRecursionDepth :: #{type uint32_t}
         , layout :: VkPipelineLayout -- ^ Interface layout of the pipeline
         , basePipelineHandle :: VkPipeline -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of
         , basePipelineIndex :: #{type int32_t} -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of
         }

instance Storable VkRayTracingPipelineCreateInfoNV where
  sizeOf    _ = #{size      VkRayTracingPipelineCreateInfoNV}
  alignment _ = #{alignment VkRayTracingPipelineCreateInfoNV}

  peek ptr = 
    VkRayTracingPipelineCreateInfoNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"flags" ptr)
       <*> peek (offset @"stageCount" ptr)
       <*> peek (offset @"pStages" ptr)
       <*> peek (offset @"groupCount" ptr)
       <*> peek (offset @"pGroups" ptr)
       <*> peek (offset @"maxRecursionDepth" ptr)
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
    pokeField @"maxRecursionDepth" ptr val
    pokeField @"layout" ptr val
    pokeField @"basePipelineHandle" ptr val
    pokeField @"basePipelineIndex" ptr val

instance Offset "sType" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, sType}

instance Offset "pNext" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, pNext}

instance Offset "flags" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, flags}

instance Offset "stageCount" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, stageCount}

instance Offset "pStages" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, pStages}

instance Offset "groupCount" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, groupCount}

instance Offset "pGroups" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, pGroups}

instance Offset "maxRecursionDepth" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, maxRecursionDepth}

instance Offset "layout" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, layout}

instance Offset "basePipelineHandle" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, basePipelineHandle}

instance Offset "basePipelineIndex" VkRayTracingPipelineCreateInfoNV where
  rawOffset = #{offset VkRayTracingPipelineCreateInfoNV, basePipelineIndex}

#else

module Vulkan.Types.Struct.VkRayTracingPipelineCreateInfoNV where

#endif