{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayModeParametersKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Struct.VkExtent2D



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayModeParametersKHR" #-} VkDisplayModeParametersKHR =
       VkDisplayModeParametersKHR
         { visibleRegion :: VkExtent2D -- ^ Visible scanout region.
         , refreshRate :: #{type uint32_t} -- ^ Number of times per second the display is updated.
         }

instance Storable VkDisplayModeParametersKHR where
  sizeOf    _ = #{size      VkDisplayModeParametersKHR}
  alignment _ = #{alignment VkDisplayModeParametersKHR}

  peek ptr = 
    VkDisplayModeParametersKHR
       <$> peek (Foreign.Storable.Offset.offset @"visibleRegion" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"refreshRate" ptr)

  poke ptr val = do
    pokeField @"visibleRegion" ptr val
    pokeField @"refreshRate" ptr val

instance Offset "visibleRegion" VkDisplayModeParametersKHR where
  rawOffset = #{offset VkDisplayModeParametersKHR, visibleRegion}

instance Offset "refreshRate" VkDisplayModeParametersKHR where
  rawOffset = #{offset VkDisplayModeParametersKHR, refreshRate}

#else

module Vulkan.Types.Struct.VkDisplayModeParametersKHR where

#endif