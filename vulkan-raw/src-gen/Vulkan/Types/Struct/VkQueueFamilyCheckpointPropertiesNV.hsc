{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_NV_device_diagnostic_checkpoints

module Vulkan.Types.Struct.VkQueueFamilyCheckpointPropertiesNV where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkPipelineStageFlags
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyCheckpointPropertiesNV" #-} VkQueueFamilyCheckpointPropertiesNV =
       VkQueueFamilyCheckpointPropertiesNV
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , checkpointExecutionStageMask :: VkPipelineStageFlags
         }

instance Storable VkQueueFamilyCheckpointPropertiesNV where
  sizeOf    _ = #{size      struct VkQueueFamilyCheckpointPropertiesNV}
  alignment _ = #{alignment struct VkQueueFamilyCheckpointPropertiesNV}

  peek ptr = 
    VkQueueFamilyCheckpointPropertiesNV
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"checkpointExecutionStageMask" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"checkpointExecutionStageMask" ptr val

instance Offset "sType" VkQueueFamilyCheckpointPropertiesNV where
  rawOffset = #{offset struct VkQueueFamilyCheckpointPropertiesNV, sType}

instance Offset "pNext" VkQueueFamilyCheckpointPropertiesNV where
  rawOffset = #{offset struct VkQueueFamilyCheckpointPropertiesNV, pNext}

instance Offset "checkpointExecutionStageMask" VkQueueFamilyCheckpointPropertiesNV where
  rawOffset = #{offset struct VkQueueFamilyCheckpointPropertiesNV, checkpointExecutionStageMask}

#else

module Vulkan.Types.Struct.VkQueueFamilyCheckpointPropertiesNV where

#endif