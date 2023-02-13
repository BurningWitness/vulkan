{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPipelineInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineInfoKHR" #-} VkPipelineInfoKHR =
       VkPipelineInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipeline :: VkPipeline
         }

instance Storable VkPipelineInfoKHR where
  sizeOf    _ = #{size      VkPipelineInfoKHR}
  alignment _ = #{alignment VkPipelineInfoKHR}

  peek ptr = 
    VkPipelineInfoKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"pipeline" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipeline" ptr val

instance Offset "sType" VkPipelineInfoKHR where
  rawOffset = #{offset VkPipelineInfoKHR, sType}

instance Offset "pNext" VkPipelineInfoKHR where
  rawOffset = #{offset VkPipelineInfoKHR, pNext}

instance Offset "pipeline" VkPipelineInfoKHR where
  rawOffset = #{offset VkPipelineInfoKHR, pipeline}

#else

module Vulkan.Types.Struct.VkPipelineInfoKHR where

#endif