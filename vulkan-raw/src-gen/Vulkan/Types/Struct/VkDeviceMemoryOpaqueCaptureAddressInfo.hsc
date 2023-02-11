{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDeviceMemoryOpaqueCaptureAddressInfo" #-} VkDeviceMemoryOpaqueCaptureAddressInfo =
       VkDeviceMemoryOpaqueCaptureAddressInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , memory :: VkDeviceMemory
         }

instance Storable VkDeviceMemoryOpaqueCaptureAddressInfo where
  sizeOf    _ = #{size      struct VkDeviceMemoryOpaqueCaptureAddressInfo}
  alignment _ = #{alignment struct VkDeviceMemoryOpaqueCaptureAddressInfo}

  peek ptr = 
    VkDeviceMemoryOpaqueCaptureAddressInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"memory" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"memory" ptr val

instance Offset "sType" VkDeviceMemoryOpaqueCaptureAddressInfo where
  rawOffset = #{offset struct VkDeviceMemoryOpaqueCaptureAddressInfo, sType}

instance Offset "pNext" VkDeviceMemoryOpaqueCaptureAddressInfo where
  rawOffset = #{offset struct VkDeviceMemoryOpaqueCaptureAddressInfo, pNext}

instance Offset "memory" VkDeviceMemoryOpaqueCaptureAddressInfo where
  rawOffset = #{offset struct VkDeviceMemoryOpaqueCaptureAddressInfo, memory}

#else

module Vulkan.Types.Struct.VkDeviceMemoryOpaqueCaptureAddressInfo where

#endif