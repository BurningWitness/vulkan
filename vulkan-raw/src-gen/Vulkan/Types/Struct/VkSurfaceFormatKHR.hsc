{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_surface

module Vulkan.Types.Struct.VkSurfaceFormatKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkColorSpaceKHR
import Vulkan.Types.Enum.VkFormat



data {-# CTYPE "vulkan/vulkan.h" "VkSurfaceFormatKHR" #-} VkSurfaceFormatKHR =
       VkSurfaceFormatKHR
         { format :: VkFormat -- ^ Supported pair of rendering format
         , colorSpace :: VkColorSpaceKHR -- ^ and color space for the surface
         }

instance Storable VkSurfaceFormatKHR where
  sizeOf    _ = #{size      VkSurfaceFormatKHR}
  alignment _ = #{alignment VkSurfaceFormatKHR}

  peek ptr = 
    VkSurfaceFormatKHR
       <$> peek (Foreign.Storable.Offset.offset @"format" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"colorSpace" ptr)

  poke ptr val = do
    pokeField @"format" ptr val
    pokeField @"colorSpace" ptr val

instance Offset "format" VkSurfaceFormatKHR where
  rawOffset = #{offset VkSurfaceFormatKHR, format}

instance Offset "colorSpace" VkSurfaceFormatKHR where
  rawOffset = #{offset VkSurfaceFormatKHR, colorSpace}

#else

module Vulkan.Types.Struct.VkSurfaceFormatKHR where

#endif