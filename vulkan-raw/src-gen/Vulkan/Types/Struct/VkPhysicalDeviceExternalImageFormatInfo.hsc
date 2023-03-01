{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_1

module Vulkan.Types.Struct.VkPhysicalDeviceExternalImageFormatInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalMemoryHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalImageFormatInfo" #-} VkPhysicalDeviceExternalImageFormatInfo =
       VkPhysicalDeviceExternalImageFormatInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalMemoryHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalImageFormatInfo where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalImageFormatInfo}
  alignment _ = #{alignment VkPhysicalDeviceExternalImageFormatInfo}

  peek ptr = 
    VkPhysicalDeviceExternalImageFormatInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalImageFormatInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalImageFormatInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfo, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalImageFormatInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalImageFormatInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalImageFormatInfo where

#endif