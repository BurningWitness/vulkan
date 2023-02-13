{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Struct.VkQueueFamilyProperties where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkQueueFlags
import Vulkan.Types.Struct.VkExtent3D



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyProperties" #-} VkQueueFamilyProperties =
       VkQueueFamilyProperties
         { queueFlags :: VkQueueFlags -- ^ Queue flags
         , queueCount :: #{type uint32_t}
         , timestampValidBits :: #{type uint32_t}
         , minImageTransferGranularity :: VkExtent3D -- ^ Minimum alignment requirement for image transfers
         }

instance Storable VkQueueFamilyProperties where
  sizeOf    _ = #{size      VkQueueFamilyProperties}
  alignment _ = #{alignment VkQueueFamilyProperties}

  peek ptr = 
    VkQueueFamilyProperties
       <$> peek (offset @"queueFlags" ptr)
       <*> peek (offset @"queueCount" ptr)
       <*> peek (offset @"timestampValidBits" ptr)
       <*> peek (offset @"minImageTransferGranularity" ptr)

  poke ptr val = do
    pokeField @"queueFlags" ptr val
    pokeField @"queueCount" ptr val
    pokeField @"timestampValidBits" ptr val
    pokeField @"minImageTransferGranularity" ptr val

instance Offset "queueFlags" VkQueueFamilyProperties where
  rawOffset = #{offset VkQueueFamilyProperties, queueFlags}

instance Offset "queueCount" VkQueueFamilyProperties where
  rawOffset = #{offset VkQueueFamilyProperties, queueCount}

instance Offset "timestampValidBits" VkQueueFamilyProperties where
  rawOffset = #{offset VkQueueFamilyProperties, timestampValidBits}

instance Offset "minImageTransferGranularity" VkQueueFamilyProperties where
  rawOffset = #{offset VkQueueFamilyProperties, minImageTransferGranularity}