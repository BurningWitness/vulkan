{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE MultiParamTypeClasses #-}
#if __GLASGOW_HASKELL__ >= 902
{-# LANGUAGE NoFieldSelectors #-}
#endif
{-# LANGUAGE TypeApplications #-}

#include <vulkan/vulkan.h>

#if VK_KHR_video_queue

module Vulkan.Types.Struct.VkVideoFormatPropertiesKHR where

import Data.Int
import Data.Word
import Foreign.Ptr
import Foreign.Storable
import Foreign.Storable.Offset
import Vulkan.Types.Enum.VkFormat
import Vulkan.Types.Enum.VkImageCreateFlags
import Vulkan.Types.Enum.VkImageTiling
import Vulkan.Types.Enum.VkImageType
import Vulkan.Types.Enum.VkImageUsageFlags
import Vulkan.Types.Enum.VkStructureType
import Vulkan.Types.Struct.VkComponentMapping



data {-# CTYPE "vulkan/vulkan.h" "VkVideoFormatPropertiesKHR" #-} VkVideoFormatPropertiesKHR =
       VkVideoFormatPropertiesKHR
         { sType :: VkStructureType
         , pNext :: Ptr ()
         , format :: VkFormat
         , componentMapping :: VkComponentMapping
         , imageCreateFlags :: VkImageCreateFlags
         , imageType :: VkImageType
         , imageTiling :: VkImageTiling
         , imageUsageFlags :: VkImageUsageFlags
         }

instance Storable VkVideoFormatPropertiesKHR where
  sizeOf    _ = #{size      VkVideoFormatPropertiesKHR}
  alignment _ = #{alignment VkVideoFormatPropertiesKHR}

  peek ptr = 
    VkVideoFormatPropertiesKHR
       <$> peek (offset @"sType" ptr)
       <*> peek (offset @"pNext" ptr)
       <*> peek (offset @"format" ptr)
       <*> peek (offset @"componentMapping" ptr)
       <*> peek (offset @"imageCreateFlags" ptr)
       <*> peek (offset @"imageType" ptr)
       <*> peek (offset @"imageTiling" ptr)
       <*> peek (offset @"imageUsageFlags" ptr)

  poke ptr val = do
    pokeField @"sType" ptr val
    pokeField @"pNext" ptr val
    pokeField @"format" ptr val
    pokeField @"componentMapping" ptr val
    pokeField @"imageCreateFlags" ptr val
    pokeField @"imageType" ptr val
    pokeField @"imageTiling" ptr val
    pokeField @"imageUsageFlags" ptr val

instance Offset "sType" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, sType}

instance Offset "pNext" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, pNext}

instance Offset "format" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, format}

instance Offset "componentMapping" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, componentMapping}

instance Offset "imageCreateFlags" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, imageCreateFlags}

instance Offset "imageType" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, imageType}

instance Offset "imageTiling" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, imageTiling}

instance Offset "imageUsageFlags" VkVideoFormatPropertiesKHR where
  rawOffset = #{offset VkVideoFormatPropertiesKHR, imageUsageFlags}

#else

module Vulkan.Types.Struct.VkVideoFormatPropertiesKHR where

#endif