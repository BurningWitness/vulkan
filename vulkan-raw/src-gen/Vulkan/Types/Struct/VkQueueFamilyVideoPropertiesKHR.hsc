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

module Vulkan.Types.Struct.VkQueueFamilyVideoPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Enum.VkVideoCodecOperationFlagsKHR



data {-# CTYPE "vulkan/vulkan.h" "VkQueueFamilyVideoPropertiesKHR" #-} VkQueueFamilyVideoPropertiesKHR =
       VkQueueFamilyVideoPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , videoCodecOperations :: VkVideoCodecOperationFlagsKHR
         }

instance Storable VkQueueFamilyVideoPropertiesKHR where
  sizeOf    _ = #{size      VkQueueFamilyVideoPropertiesKHR}
  alignment _ = #{alignment VkQueueFamilyVideoPropertiesKHR}

  peek ptr = 
    VkQueueFamilyVideoPropertiesKHR
       <$> peek (Foreign.Storable.Offset.offset @"sType" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"pNext" ptr)
       <*> peek (Foreign.Storable.Offset.offset @"videoCodecOperations" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"videoCodecOperations" ptr val

instance Offset "sType" VkQueueFamilyVideoPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyVideoPropertiesKHR, sType}

instance Offset "pNext" VkQueueFamilyVideoPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyVideoPropertiesKHR, pNext}

instance Offset "videoCodecOperations" VkQueueFamilyVideoPropertiesKHR where
  rawOffset = #{offset VkQueueFamilyVideoPropertiesKHR, videoCodecOperations}

#else

module Vulkan.Types.Struct.VkQueueFamilyVideoPropertiesKHR where

#endif