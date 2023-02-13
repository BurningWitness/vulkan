{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_pipeline_executable_properties

module Vulkan.Types.Struct.VkPipelineExecutableInfoKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkPipelineExecutableInfoKHR" #-} VkPipelineExecutableInfoKHR =
       VkPipelineExecutableInfoKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , pipeline :: VkPipeline
         , executableIndex :: #{type uint32_t}
         }

instance Storable VkPipelineExecutableInfoKHR where
  sizeOf    _ = #{size      VkPipelineExecutableInfoKHR}
  alignment _ = #{alignment VkPipelineExecutableInfoKHR}

  peek ptr = 
    VkPipelineExecutableInfoKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pipeline" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"executableIndex" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"pipeline" ptr val
    pokeField @"executableIndex" ptr val

instance Offset "sType" VkPipelineExecutableInfoKHR where
  rawOffset = #{offset VkPipelineExecutableInfoKHR, sType}

instance Offset "pNext" VkPipelineExecutableInfoKHR where
  rawOffset = #{offset VkPipelineExecutableInfoKHR, pNext}

instance Offset "pipeline" VkPipelineExecutableInfoKHR where
  rawOffset = #{offset VkPipelineExecutableInfoKHR, pipeline}

instance Offset "executableIndex" VkPipelineExecutableInfoKHR where
  rawOffset = #{offset VkPipelineExecutableInfoKHR, executableIndex}

#else

module Vulkan.Types.Struct.VkPipelineExecutableInfoKHR where

#endif