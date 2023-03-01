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
  sizeOf    _ = #{size      VkDisplayPlanePropertiesKHR}
  alignment _ = #{alignment VkDisplayPlanePropertiesKHR}

  peek ptr = 
    VkDisplayPlanePropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"currentDisplay" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"currentStackIndex" ptr)

  poke ptr val = do
    pokeField @"currentDisplay" ptr val
    pokeField @"currentStackIndex" ptr val

instance Offset "currentDisplay" VkDisplayPlanePropertiesKHR where
  rawOffset = #{offset VkDisplayPlanePropertiesKHR, currentDisplay}

instance Offset "currentStackIndex" VkDisplayPlanePropertiesKHR where
  rawOffset = #{offset VkDisplayPlanePropertiesKHR, currentStackIndex}

#else

module Vulkan.Types.Struct.VkDisplayPlanePropertiesKHR where

#endif