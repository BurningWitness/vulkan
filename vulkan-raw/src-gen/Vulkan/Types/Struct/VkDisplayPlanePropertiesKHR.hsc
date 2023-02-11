{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_display

module Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Handle



data {-# CTYPE "vulkan/vulkan.h" "VkDisplayPlanePropertiesKHR" #-} VkDisplayPlanePropertiesKHR =
       VkDisplayPlanePropertiesKHR
         { currentDisplay :: VkDisplayKHR -- ^ Display the plane is currently associated with.  Will be VK_NULL_HANDLE if the plane is not in use.
         , currentStackIndex :: #{type uint32_t} -- ^ Current z-order of the plane.
         }

instance Storable VkDisplayPlanePropertiesKHR where
  sizeOf    _ = #{size      struct VkDisplayPlanePropertiesKHR}
  alignment _ = #{alignment struct VkDisplayPlanePropertiesKHR}

  peek ptr = 
    VkDisplayPlanePropertiesKHR
       <$> peek (offset @"currentDisplay" ptr)
       <*> peek (offset @"currentStackIndex" ptr)

  poke ptr val = do
    pokeField @"currentDisplay" ptr val
    pokeField @"currentStackIndex" ptr val

instance Offset "currentDisplay" VkDisplayPlanePropertiesKHR where
  rawOffset = #{offset struct VkDisplayPlanePropertiesKHR, currentDisplay}

instance Offset "currentStackIndex" VkDisplayPlanePropertiesKHR where
  rawOffset = #{offset struct VkDisplayPlanePropertiesKHR, currentStackIndex}

#else

module Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR where

#endif