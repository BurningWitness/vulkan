{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_driver_properties

module Vulkan.Types.Struct.VkConformanceVersionKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset



data {-# CTYPE "vulkan/vulkan.h" "VkConformanceVersionKHR" #-} VkConformanceVersionKHR =
       VkConformanceVersionKHR
         { major :: #{type uint8_t}
         , minor :: #{type uint8_t}
         , subminor :: #{type uint8_t}
         , patch :: #{type uint8_t}
         }

instance Storable VkConformanceVersionKHR where
  sizeOf    _ = #{size      VkConformanceVersionKHR}
  alignment _ = #{alignment VkConformanceVersionKHR}

  peek ptr = 
    VkConformanceVersionKHR
       <$> peek (Foreign.Storable.Offset.offset @"major" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"subminor" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"patch" ptr)

  poke ptr val = do
    pokeField @"major" ptr val
    pokeField @"minor" ptr val
    pokeField @"subminor" ptr val
    pokeField @"patch" ptr val

instance Offset "major" VkConformanceVersionKHR where
  rawOffset = #{offset VkConformanceVersionKHR, major}

instance Offset "minor" VkConformanceVersionKHR where
  rawOffset = #{offset VkConformanceVersionKHR, minor}

instance Offset "subminor" VkConformanceVersionKHR where
  rawOffset = #{offset VkConformanceVersionKHR, subminor}

instance Offset "patch" VkConformanceVersionKHR where
  rawOffset = #{offset VkConformanceVersionKHR, patch}

#else

module Vulkan.Types.Struct.VkConformanceVersionKHR where

#endif