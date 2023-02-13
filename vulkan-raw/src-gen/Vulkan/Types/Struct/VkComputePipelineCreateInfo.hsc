{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkComputePipelineCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineCreateFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle
import Vulkan.Types.Struct.VkPipelineShaderStageCreateInfo



data {-# CTYPE "vulkan/vulkan.h" "VkComputePipelineCreateInfo" #-} VkComputePipelineCreateInfo =
       VkComputePipelineCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , flags :: VkPipelineCreateFlags -- ^ Pipeline creation flags
         , stage :: VkPipelineShaderStageCreateInfo
         , layout :: VkPipelineLayout -- ^ Interface layout of the pipeline
         , basePipelineHandle :: VkPipeline -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is nonzero, it specifies the handle of the base pipeline this is a derivative of
         , basePipelineIndex :: #{type int32_t} -- ^ If VK_PIPELINE_CREATE_DERIVATIVE_BIT is set and this value is not -1, it specifies an index into pCreateInfos of the base pipeline this is a derivative of
         }

instance Storable VkComputePipelineCreateInfo where
  sizeOf    _ = #{size      VkComputePipelineCreateInfo}
  alignment _ = #{alignment VkComputePipelineCreateInfo}

  peek ptr = 
    VkComputePipelineCreateInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"flags" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"stage" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"layout" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineHandle" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"basePipelineIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"flags" ptr val
    pokeField @"stage" ptr val
    pokeField @"layout" ptr val
    pokeField @"basePipelineHandle" ptr val
    pokeField @"basePipelineIndex" ptr val

instance Offset "sType" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, sType}

instance Offset "pNext" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, pNext}

instance Offset "flags" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, flags}

instance Offset "stage" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, stage}

instance Offset "layout" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, layout}

instance Offset "basePipelineHandle" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, basePipelineHandle}

instance Offset "basePipelineIndex" VkComputePipelineCreateInfo where
  rawOffset = #{offset VkComputePipelineCreateInfo, basePipelineIndex}