{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkDisplayPlaneAlphaFlagsKHR
import Vulkan.Types.Struct.VkExtent2D
import Vulkan.Types.Struct.VkOffset2D



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPlaneCapabilitiesKHR" #-} VkDisplayPlaneCapabilitiesKHR =
       VkDisplayPlaneCapabilitiesKHR
         { supportedAlpha :: VkDisplayPlaneAlphaFlagsKHR -- ^ Types of alpha blending supported, if any.
         , minSrcPosition :: VkOffset2D -- ^ Does the plane have any position and extent restrictions?
         , maxSrcPosition :: VkOffset2D
         , minSrcExtent :: VkExtent2D
         , maxSrcExtent :: VkExtent2D
         , minDstPosition :: VkOffset2D
         , maxDstPosition :: VkOffset2D
         , minDstExtent :: VkExtent2D
         , maxDstExtent :: VkExtent2D
         }

instance Storable VkDisplayPlaneCapabilitiesKHR where
  sizeOf    _ = #{size      struct VkDisplayPlaneCapabilitiesKHR}
  alignment _ = #{alignment struct VkDisplayPlaneCapabilitiesKHR}

  peek ptr = 
    VkDisplayPlaneCapabilitiesKHR
       <$> peek (offset @"supportedAlpha" ptr)
       <*> peek (offset @"minSrcPosition" ptr)
       <*> peek (offset @"maxSrcPosition" ptr)
       <*> peek (offset @"minSrcExtent" ptr)
       <*> peek (offset @"maxSrcExtent" ptr)
       <*> peek (offset @"minDstPosition" ptr)
       <*> peek (offset @"maxDstPosition" ptr)
       <*> peek (offset @"minDstExtent" ptr)
       <*> peek (offset @"maxDstExtent" ptr)

  poke ptr val = do
    pokeField @"supportedAlpha" ptr val
    pokeField @"minSrcPosition" ptr val
    pokeField @"maxSrcPosition" ptr val
    pokeField @"minSrcExtent" ptr val
    pokeField @"maxSrcExtent" ptr val
    pokeField @"minDstPosition" ptr val
    pokeField @"maxDstPosition" ptr val
    pokeField @"minDstExtent" ptr val
    pokeField @"maxDstExtent" ptr val

instance Offset "supportedAlpha" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, supportedAlpha}

instance Offset "minSrcPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, minSrcPosition}

instance Offset "maxSrcPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, maxSrcPosition}

instance Offset "minSrcExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, minSrcExtent}

instance Offset "maxSrcExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, maxSrcExtent}

instance Offset "minDstPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, minDstPosition}

instance Offset "maxDstPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, maxDstPosition}

instance Offset "minDstExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, minDstExtent}

instance Offset "maxDstExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset struct VkDisplayPlaneCapabilitiesKHR, maxDstExtent}

#else

module Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR where

#endif