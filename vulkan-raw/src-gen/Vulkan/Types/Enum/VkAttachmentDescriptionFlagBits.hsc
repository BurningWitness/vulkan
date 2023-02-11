{-# LANGUAGE CPP #-}
{-# LANGUAGE PatternSynonyms #-}

#include <vulkan/vulkan.h>

module Vulkan.Types.Enum.VkAttachmentDescriptionFlagBits where

import Vulkan.Types.Base



type VkAttachmentDescriptionFlagBits = VkFlags

-- | The attachment may alias physical memory of another attachment in the same render pass
pattern VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT :: (Eq a, Num a) => a
pattern VK_ATTACHMENT_DESCRIPTION_MAY_ALIAS_BIT = 1