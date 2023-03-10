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

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkExternalFenceHandleTypeFlagBits
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkPhysicalDeviceExternalFenceInfo" #-} VkPhysicalDeviceExternalFenceInfo =
       VkPhysicalDeviceExternalFenceInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , handleType :: VkExternalFenceHandleTypeFlagBits
         }

instance Storable VkPhysicalDeviceExternalFenceInfo where
  sizeOf    _ = #{size      VkPhysicalDeviceExternalFenceInfo}
  alignment _ = #{alignment VkPhysicalDeviceExternalFenceInfo}

  peek ptr = 
    VkPhysicalDeviceExternalFenceInfo
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"handleType" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"handleType" ptr val

instance Offset "sType" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfo, sType}

instance Offset "pNext" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfo, pNext}

instance Offset "handleType" VkPhysicalDeviceExternalFenceInfo where
  rawOffset = #{offset VkPhysicalDeviceExternalFenceInfo, handleType}

#else

module Vulkan.Types.Struct.VkPhysicalDeviceExternalFenceInfo where

#endif