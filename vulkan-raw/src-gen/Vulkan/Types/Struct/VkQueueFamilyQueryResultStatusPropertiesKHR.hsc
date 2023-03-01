{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkQueueFamilyQueryResultStatusPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Base
import Vulkan.Types.Enum.VkStructureType



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyQueryResultStatusPropertiesKHR" #-} VkQueueFamilyQueryResultStatusPropertiesKHR =
       VkQueueFamilyQueryResultStatusPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , queryResultStatusSupport :: VkBool32
         }

instance Storable VkQueueFamilyQueryResultStatusPropertiesKHR where
  sizeOf    _ = #{size      VkQueueFamilyQueryResultStatusPropertiesKHR}
  alignment _ = #{alignment VkQueueFamilyQueryResultStatusPropertiesKHR}

  peek ptr = 
    VkQueueFamilyQueryResultStatusPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"queryResultStatusSupport" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"queryResultStatusSupport" ptr val

instance Offset "sType" VkQueueFamilyQueryResultStatusPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyQueryResultStatusPropertiesKHR, sType}

instance Offset "pNext" VkQueueFamilyQueryResultStatusPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyQueryResultStatusPropertiesKHR, pNext}

instance Offset "queryResultStatusSupport" VkQueueFamilyQueryResultStatusPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyQueryResultStatusPropertiesKHR, queryResultStatusSupport}

#else

module Vulkan.Types.Struct.VkQueueFamilyQueryResultStatusPropertiesKHR where

#endif