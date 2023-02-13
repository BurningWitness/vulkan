{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_synchronization2 && VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Struct.VkQueueFamilyCheckpointProperties2NV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags2
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyCheckpointProperties2NV" #-} VkQueueFamilyCheckpointProperties2NV =
       VkQueueFamilyCheckpointProperties2NV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , checkpointExecutionStageMask :: VkPipelineStageFlags2
         }

instance Storable VkQueueFamilyCheckpointProperties2NV where
  sizeOf    _ = #{size      VkQueueFamilyCheckpointProperties2NV}
  alignment _ = #{alignment VkQueueFamilyCheckpointProperties2NV}

  peek ptr = 
    VkQueueFamilyCheckpointProperties2NV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"checkpointExecutionStageMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"checkpointExecutionStageMask" ptr val

instance Offset "sType" VkQueueFamilyCheckpointProperties2NV where
  rawOffset = #{offset VkQueueFamilyCheckpointProperties2NV, sType}

instance Offset "pNext" VkQueueFamilyCheckpointProperties2NV where
  rawOffset = #{offset VkQueueFamilyCheckpointProperties2NV, pNext}

instance Offset "checkpointExecutionStageMask" VkQueueFamilyCheckpointProperties2NV where
  rawOffset = #{offset VkQueueFamilyCheckpointProperties2NV, checkpointExecutionStageMask}

#else

module Vulkan.Types.Struct.VkQueueFamilyCheckpointProperties2NV where

#endif