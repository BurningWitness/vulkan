{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_VERSION_1_2

module Vulkan.Types.Struct.VkBufferOpaqueCaptureAddressCreateInfo where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkBufferOpaqueCaptureAddressCreateInfo" #-} VkBufferOpaqueCaptureAddressCreateInfo =
       VkBufferOpaqueCaptureAddressCreateInfo
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , opaqueCaptureAddress :: #{type uint64_t}
         }

instance Storable VkBufferOpaqueCaptureAddressCreateInfo where
  sizeOf    _ = #{size      struct VkBufferOpaqueCaptureAddressCreateInfo}
  alignment _ = #{alignment struct VkBufferOpaqueCaptureAddressCreateInfo}

  peek ptr = 
    VkBufferOpaqueCaptureAddressCreateInfo
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"opaqueCaptureAddress" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"opaqueCaptureAddress" ptr val

instance Offset "sType" VkBufferOpaqueCaptureAddressCreateInfo where
  rawOffset = #{offset struct VkBufferOpaqueCaptureAddressCreateInfo, sType}

instance Offset "pNext" VkBufferOpaqueCaptureAddressCreateInfo where
  rawOffset = #{offset struct VkBufferOpaqueCaptureAddressCreateInfo, pNext}

instance Offset "opaqueCaptureAddress" VkBufferOpaqueCaptureAddressCreateInfo where
  rawOffset = #{offset struct VkBufferOpaqueCaptureAddressCreateInfo, opaqueCaptureAddress}

#else

module Vulkan.Types.Struct.VkBufferOpaqueCaptureAddressCreateInfo where

#endif