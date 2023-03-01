{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
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
  sizeOf    _ = #{size      VkDisplayPlaneCapabilitiesKHR}
  alignment _ = #{alignment VkDisplayPlaneCapabilitiesKHR}

  peek ptr = 
    VkDisplayPlaneCapabilitiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"supportedAlpha" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSrcPosition" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSrcPosition" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minSrcExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxSrcExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minDstPosition" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDstPosition" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"minDstExtent" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"maxDstExtent" ptr)

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
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, supportedAlpha}

instance Offset "minSrcPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, minSrcPosition}

instance Offset "maxSrcPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, maxSrcPosition}

instance Offset "minSrcExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, minSrcExtent}

instance Offset "maxSrcExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, maxSrcExtent}

instance Offset "minDstPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, minDstPosition}

instance Offset "maxDstPosition" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, maxDstPosition}

instance Offset "minDstExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, minDstExtent}

instance Offset "maxDstExtent" VkDisplayPlaneCapabilitiesKHR where
  rawOffset = #{offset VkDisplayPlaneCapabilitiesKHR, maxDstExtent}

#else

module Vulkan.Types.Struct.VkDisplayPlaneCapabilitiesKHR where

#endif