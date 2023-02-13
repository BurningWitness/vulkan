{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkMemoryGetAndroidHardwareBufferInfoANDROID" #-} VkMemoryGetAndroidHardwareBufferInfoANDROID =
       VkMemoryGetAndroidHardwareBufferInfoANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         }

instance Storable VkMemoryGetAndroidHardwareBufferInfoANDROID where
  sizeOf    _ = #{size      VkMemoryGetAndroidHardwareBufferInfoANDROID}
  alignment _ = #{alignment VkMemoryGetAndroidHardwareBufferInfoANDROID}

  peek ptr = 
    VkMemoryGetAndroidHardwareBufferInfoANDROID
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"memory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val

instance Offset "sType" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkMemoryGetAndroidHardwareBufferInfoANDROID, sType}

instance Offset "pNext" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkMemoryGetAndroidHardwareBufferInfoANDROID, pNext}

instance Offset "memory" VkMemoryGetAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkMemoryGetAndroidHardwareBufferInfoANDROID, memory}

#else

module Vulkan.Types.Struct.VkMemoryGetAndroidHardwareBufferInfoANDROID where

#endif