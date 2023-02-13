{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_ANDROID_external_memory_android_hardware_buffer

module Vulkan.Types.Struct.VkImportAndroidHardwareBufferInfoANDROID where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkImportAndroidHardwareBufferInfoANDROID" #-} VkImportAndroidHardwareBufferInfoANDROID =
       VkImportAndroidHardwareBufferInfoANDROID
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , buffer :: Ptr AHardwareBuffer
         }

instance Storable VkImportAndroidHardwareBufferInfoANDROID where
  sizeOf    _ = #{size      VkImportAndroidHardwareBufferInfoANDROID}
  alignment _ = #{alignment VkImportAndroidHardwareBufferInfoANDROID}

  peek ptr = 
    VkImportAndroidHardwareBufferInfoANDROID
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"buffer" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"buffer" ptr val

instance Offset "sType" VkImportAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkImportAndroidHardwareBufferInfoANDROID, sType}

instance Offset "pNext" VkImportAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkImportAndroidHardwareBufferInfoANDROID, pNext}

instance Offset "buffer" VkImportAndroidHardwareBufferInfoANDROID where
  rawOffset = #{offset VkImportAndroidHardwareBufferInfoANDROID, buffer}

#else

module Vulkan.Types.Struct.VkImportAndroidHardwareBufferInfoANDROID where

#endif