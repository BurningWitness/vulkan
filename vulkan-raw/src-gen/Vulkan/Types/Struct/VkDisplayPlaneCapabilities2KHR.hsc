{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_get_display_properties2

module Vulkan.Types.Struct.VkDisplayPlaneCapabilities2KHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPlaneCapabilities2KHR" #-} VkDisplayPlaneCapabilities2KHR =
       VkDisplayPlaneCapabilities2KHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , capabilities :: VkDisplayPlaneCapabilitiesKHR
         }

instance Storable VkDisplayPlaneCapabilities2KHR where
  sizeOf    _ = #{size      VkDisplayPlaneCapabilities2KHR}
  alignment _ = #{alignment VkDisplayPlaneCapabilities2KHR}

  peek ptr = 
    VkDisplayPlaneCapabilities2KHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"capabilities" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"capabilities" ptr val

instance Offset "sType" VkDisplayPlaneCapabilities2KHR where
  rawOffset = #{offset VkDisplayPlaneCapabilities2KHR, sType}

instance Offset "pNext" VkDisplayPlaneCapabilities2KHR where
  rawOffset = #{offset VkDisplayPlaneCapabilities2KHR, pNext}

instance Offset "capabilities" VkDisplayPlaneCapabilities2KHR where
  rawOffset = #{offset VkDisplayPlaneCapabilities2KHR, capabilities}

#else

module Vulkan.Types.Struct.VkDisplayPlaneCapabilities2KHR where

#endif